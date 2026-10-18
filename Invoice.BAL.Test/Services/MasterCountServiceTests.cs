using Invoice.BAL.Services;
using Invoice.BAL.Contracts;
using Invoice.DAL.Contracts;
using Invoice.Data.Entities;
using Invoice.DTOs;
using Moq;
using System.Collections.Generic;
using System.Linq;

namespace Invoice.BAL.Test.Services;

public class MasterCountServiceTests
{
    public MasterCountServiceTests()
    {
        _customersMock = new Mock<ICustomerRepository>();
        _itemsMock = new Mock<IItemmasterRepository>();
        _usersMock = new Mock<IUsersRepository>();
        _categoriesMock = new Mock<ICategoryService>();
        _vendorsMock = new Mock<IVendorService>();

        _service = new MasterCountService(
            _customersMock.Object,
            _itemsMock.Object,
            _usersMock.Object,
            _categoriesMock.Object,
            _vendorsMock.Object);
    }

    private readonly Mock<ICustomerRepository> _customersMock;
    private readonly Mock<IItemmasterRepository> _itemsMock;
    private readonly Mock<IUsersRepository> _usersMock;
    private readonly Mock<ICategoryService> _categoriesMock;
    private readonly Mock<IVendorService> _vendorsMock;
    private readonly MasterCountService _service;

    [Fact]
    public async Task GetCategoryNamesAsync_ShouldReturnDistinctTrimmedOrderedNames()
    {
        _categoriesMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CategoryDto>
            {
                new CategoryDto { Name = " Rice " },
                new CategoryDto { Name = "rice" },
                new CategoryDto { Name = " Wheat" },
                new CategoryDto { Name = null },
                new CategoryDto { Name = " " }
            });

        var result = await _service.GetCategoryNamesAsync();

        Assert.Equal(2, result.Count);
        Assert.Equal("Rice", result[0]);
        Assert.Equal("Wheat", result[1]);
    }

    [Fact]
    public async Task GetCityNamesAsync_ShouldReturnDistinctTrimmedOrderedCities_ExcludesDeletedAndEmpty()
    {
        _customersMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CustomerEntity>
            {
                new CustomerEntity { Id = 1, City = " Mumbai ", IsDeleted = false },
                new CustomerEntity { Id = 2, City = "mumbai", IsDeleted = false },
                new CustomerEntity { Id = 3, City = "", IsDeleted = false },
                new CustomerEntity { Id = 4, City = null, IsDeleted = false },
                new CustomerEntity { Id = 5, City = "Delhi", IsDeleted = true }
            });

        var result = await _service.GetCityNamesAsync();

        Assert.Single(result);
        Assert.Equal("Mumbai", result[0]);
    }

    [Fact]
    public async Task CountCategoriesAsync_ShouldRespectIsActiveFilter()
    {
        _categoriesMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CategoryDto>
            {
                new CategoryDto { Id = 1, IsActive = true },
                new CategoryDto { Id = 2, IsActive = false },
                new CategoryDto { Id = 3, IsActive = true }
            });

        var all = await _service.CountCategoriesAsync(null);
        var active = await _service.CountCategoriesAsync(true);
        var inactive = await _service.CountCategoriesAsync(false);

        Assert.Equal(3, all);
        Assert.Equal(2, active);
        Assert.Equal(1, inactive);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_ShouldReturnNull_WhenCategoryNotFound()
    {
        _categoriesMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CategoryDto>());

        var result = await _service.CountItemsInCategoryAsync("NonExist", null);

        Assert.Null(result);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_ShouldReturnTotalRecords_WhenCategoryFound()
    {
        _categoriesMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CategoryDto>
            {
                new CategoryDto { Id = 10, Name = "Food" }
            });

        _itemsMock
            .Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
            .ReturnsAsync(new PagedResultDto<ItemmasterEntity> { TotalRecords = 7 });

        var result = await _service.CountItemsInCategoryAsync("Food", true);

        Assert.Equal(7, result);

        _itemsMock.Verify(x => x.GetAllPagedAsync(It.Is<ItemmasterFilterDto>(f => f.CategoryId == 10 && f.IsActive == true && f.PageNumber == 1 && f.PageSize == 1)), Times.Once);
    }

    [Fact]
    public async Task CountItemsAsync_ShouldReturnTotalRecordsFromRepository()
    {
        _itemsMock
            .Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
            .ReturnsAsync(new PagedResultDto<ItemmasterEntity> { TotalRecords = 42 });

        var result = await _service.CountItemsAsync(5, false);

        Assert.Equal(42, result);
    }

    [Fact]
    public async Task CountCustomersAsync_ShouldCallRepositoryCount()
    {
        _customersMock
            .Setup(x => x.GetCustomerCountAsync(true))
            .ReturnsAsync(123);

        var result = await _service.CountCustomersAsync(true);

        Assert.Equal(123, result);
    }

    [Fact]
    public async Task CountCustomersByCityAsync_ShouldMatchCityCaseAndTrim()
    {
        _customersMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CustomerEntity>
            {
                new CustomerEntity { City = "Pune", IsDeleted = false, IsActive = true },
                new CustomerEntity { City = " pune ", IsDeleted = false, IsActive = true },
                new CustomerEntity { City = "Pune", IsDeleted = true, IsActive = true },
                new CustomerEntity { City = "Mumbai", IsDeleted = false, IsActive = true }
            });

        var result = await _service.CountCustomersByCityAsync("PUNE", true);

        Assert.Equal(2, result);
    }

    [Fact]
    public async Task CountCustomersGroupedByCityAsync_ShouldGroupAndOrder()
    {
        _customersMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<CustomerEntity>
            {
                new CustomerEntity { City = "Bengaluru", IsDeleted = false, IsActive = true },
                new CustomerEntity { City = "bengaluru ", IsDeleted = false, IsActive = true },
                new CustomerEntity { City = "Chennai", IsDeleted = false, IsActive = true },
                new CustomerEntity { City = "", IsDeleted = false, IsActive = true }
            });

        var result = await _service.CountCustomersGroupedByCityAsync(null);

        Assert.Equal(2, result.Count);
        Assert.Equal("Bengaluru", result[0].City);
        Assert.Equal(2, result[0].Count);
        Assert.Equal("Chennai", result[1].City);
        Assert.Equal(1, result[1].Count);
    }

    [Fact]
    public async Task CountVendorsAsync_ShouldRespectIsActive()
    {
        _vendorsMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<VendorDto>
            {
                new VendorDto { Id = 1, IsActive = true },
                new VendorDto { Id = 2, IsActive = false },
                new VendorDto { Id = 3, IsActive = true }
            });

        var all = await _service.CountVendorsAsync(null);
        var active = await _service.CountVendorsAsync(true);

        Assert.Equal(3, all);
        Assert.Equal(2, active);
    }

    [Fact]
    public async Task CountUsersAsync_ShouldExcludeDeletedAndRespectIsActive()
    {
        _usersMock
            .Setup(x => x.GetAllAsync())
            .ReturnsAsync(new List<UsersEntity>
            {
                new UsersEntity { Id = 1, IsActive = true, IsDeleted = false },
                new UsersEntity { Id = 2, IsActive = false, IsDeleted = false },
                new UsersEntity { Id = 3, IsActive = true, IsDeleted = true }
            });

        var all = await _service.CountUsersAsync(null);
        var active = await _service.CountUsersAsync(true);

        Assert.Equal(2, all);
        Assert.Equal(1, active);
    }
}

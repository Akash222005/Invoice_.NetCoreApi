using InvoiceCoreAPI.DTO;
namespace InvoiceCoreAPI.Contracts;

public interface IUsersService
{
    Task<int> AddAsync(UsersDto dto);

    Task<IEnumerable<UsersDto>> GetAllAsync();

    Task<UsersDto?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(UsersDto dto);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<UsersDto>> GetAllPagedAsync(
    string? UserName,
    string? FirstName,
    string? LastName,
    string? PhoneNumber,
    string? City,
    DateTime? DateOfBirth,
    bool? IsActive,
    int pageNumber,
    int pageSize);

}
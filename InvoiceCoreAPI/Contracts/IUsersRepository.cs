using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using InvoiceCoreAPI.Repositories;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
namespace InvoiceCoreAPI.Contracts;

public interface IUsersRepository
{
    Task<int> AddAsync(Users users);

    Task<IEnumerable<Users>> GetAllAsync();

    Task<Users?> GetByIdAsync(int id);

    Task<bool> UpdateAsync(Users users);

    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<Users>> GetAllPagedAsync(
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



using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using InvoiceCoreAPI.Repositories;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
namespace InvoiceCoreAPI.Contracts;

public interface IUsersRepository
{
    
    Task<IEnumerable<Users>> GetAllAsync();

    Task<Users?> GetByIdAsync(int id);

    Task<Users?> GetByUserNameAsync(string userName);
    Task<Users?> GetByEmailAsync(string email);
    Task<int> AddAsync(Users user);

    Task<bool> UpdateAsync(int id,Users user);

    Task<bool> DeleteAsync(int id, string updatedBy);

    Task<PagedResultDto<Users>> GetAllPagedAsync
        (UserFilterDto filter);
    Task<bool> UpdateLastLoginAsync(int id);
}



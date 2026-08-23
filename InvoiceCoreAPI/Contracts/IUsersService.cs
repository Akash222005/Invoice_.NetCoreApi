using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Models;
namespace InvoiceCoreAPI.Contracts;

public interface IUsersService
{
    
    Task<ApiResponse<IEnumerable<UsersDto>>> GetAllAsync();

    Task<ApiResponse<UsersDto?>> GetByIdAsync(int id);

    Task<ApiResponse<UsersDto>> AddAsync(UserCreateDto dto);

    Task<ApiResponse<UsersDto>> UpdateAsync(
        int id,
        UserUpdateDto dto);

    Task<ApiResponse<bool>> DeleteAsync(int id, string updatedBy);

    Task<ApiResponse<PagedResultDto<UsersDto>>> GetAllPagedAsync(
        UserFilterDto filter);

    Task<UsersDto?> ValidateUserAsync(
        string userName,
        string password);



}
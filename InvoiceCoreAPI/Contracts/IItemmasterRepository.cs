using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using InvoiceCoreAPI.Repositories;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
namespace InvoiceCoreAPI.Contracts;

public interface IItemmasterRepository
{
    Task<int> AddAsync(ItemMaster itemmaster);
    Task<IEnumerable<ItemMaster>> GetAllAsync();
    Task<ItemMaster?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(ItemMaster itemmaster);
    Task<bool> DeleteAsync(int id);

    Task<PagedResultDto<ItemMaster>> GetAllPagedAsync(

    ItemmasterFilterDto search);

}

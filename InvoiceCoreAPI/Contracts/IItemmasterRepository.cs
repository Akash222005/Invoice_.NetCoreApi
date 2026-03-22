using InvoiceCoreAPI.Entities;
namespace InvoiceCoreAPI.Contracts;

public interface IItemMasterRepository
{
    Task<int> AddAsync(ItemMaster itemmaster);
    Task<IEnumerable<ItemMaster>> GetAllAsync();
    Task<ItemMaster?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(ItemMaster itemmaster);
    Task<bool> DeleteAsync(int id);
}

using Invoice.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Invoice.BAL.Contracts
{
    public interface IItemMasterService
    {
        Task<int> AddAsync(ItemmasterDto dto);
        Task<IEnumerable<ItemmasterDto>> GetAllAsync();
        Task<ItemmasterDto?> GetByIdAsync(int id);
        Task<bool> UpdateAsync(ItemmasterDto dto);
        Task<bool> DeleteAsync(int id);

        Task<PagedResultDto<ItemmasterDto>> GetAllPagedAsync(
ItemmasterFilterDto search);
    }
}

using AutoMapper;
using InvoiceCoreAPI.Contracts;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using InvoiceCoreAPI.Repositories;
namespace InvoiceCoreAPI.Services
{
    public class ItemMasterService : IItemMasterService
    {
        private readonly IItemMasterRepository _repository;
        private readonly IMapper _mapper;
        public ItemMasterService(IItemMasterRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<int> AddAsync(ItemMasterDto dto)
        {
            var entity = _mapper.Map<ItemMaster>(dto);
            return await _repository.AddAsync(entity);
        }
        public async Task<IEnumerable<ItemMasterDto>> GetAllAsync()
        {
            var items = await _repository.GetAllAsync();
            return _mapper.Map<IEnumerable<ItemMasterDto>>(items);
        }
        public async Task<ItemMasterDto?> GetByIdAsync(int id)
        {
            var item = await _repository.GetByIdAsync(id);
            return item == null ? null : _mapper.Map<ItemMasterDto>(item);
        }
        public async Task<bool> UpdateAsync(ItemMasterDto dto)
        {
            var entity = _mapper.Map<ItemMaster>(dto);
            return await _repository.UpdateAsync(entity);
        }
        public async Task<bool> DeleteAsync(int id)
        {
            return await _repository.DeleteAsync(id);
        }
        public async Task<PagedResultDto<ItemMasterDto>> GetAllPagedAsync(
        string? catCode,
        string? itemName,
        string? uom,
        int pageNumber,
        int pageSize)
        {
            var result = await _repository.GetAllPagedAsync(
                catCode, itemName, uom, pageNumber, pageSize);

            return new PagedResultDto<ItemMasterDto>
            {
                Data = _mapper.Map<IEnumerable<ItemMasterDto>>(result.Data),
                TotalRecords = result.TotalRecords
            };
        }
    }
}
using AutoMapper;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
public class ItemMasterProfile : Profile
{
    public ItemMasterProfile()
    {
        CreateMap<ItemMaster, ItemMasterDto>().ReverseMap();
    }
}
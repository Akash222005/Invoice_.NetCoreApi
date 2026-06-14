using AutoMapper;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
public class CategoryProfile : Profile
{
    public CategoryProfile()
    {
        CreateMap<Category, CategoryDto>().ReverseMap();
    }
}
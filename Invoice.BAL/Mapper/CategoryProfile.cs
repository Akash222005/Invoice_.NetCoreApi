using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;



public class CategoryProfile : Profile
{
    public CategoryProfile()
    {
        CreateMap<CategoryEntity, CategoryDto>().ReverseMap();
    }
}

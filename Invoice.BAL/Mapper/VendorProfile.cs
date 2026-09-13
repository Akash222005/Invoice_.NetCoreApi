
using Invoice.DTOs;
using AutoMapper;
using Invoice.Data.Entities;

public class VendorProfile : Profile
{
    public VendorProfile()
    {
        CreateMap<VendorEntity, VendorDto>().ReverseMap();
    }
}

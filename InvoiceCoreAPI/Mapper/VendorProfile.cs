using AutoMapper;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;

    public class VendorProfile : Profile
    {
    public VendorProfile()
    {
        CreateMap<Vendor, VendorDto>().ReverseMap();
    }

}


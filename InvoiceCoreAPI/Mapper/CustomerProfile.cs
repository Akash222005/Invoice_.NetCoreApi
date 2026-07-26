using AutoMapper;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;

    public class CustomerProfile : Profile
    {
    public CustomerProfile()
    {
        CreateMap<Customer, CustomerDto>().ReverseMap();
    }
}

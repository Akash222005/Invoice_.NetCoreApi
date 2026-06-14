using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace InvoiceCoreAPI.Entities;

[Table("Category")]
public class Category
{
    [Key]
    public int Id { get; set; }

    [Required]
    [StringLength(5)]
    public string Code { get; set; } = string.Empty;

    [Required]
    [StringLength(25)]
   
    public string Name { get; set; } = string.Empty;

    [StringLength(250)]
    public string? Description { get; set; }

    [Required]
    [StringLength(3)]
 
    public bool? IsActive { get; set; }

    [StringLength(100)]
    public string? CreatedBy { get; set; }

    public DateTime? CreatedDate { get; set; }

    [StringLength(100)]
    public string? UpdatedBy { get; set; }

    public DateTime? UpdatedDate { get; set; }
}

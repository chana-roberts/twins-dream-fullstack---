using System;
using System.Collections.Generic;

namespace TwinsDresmBE.Modules;

public partial class Product
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public int Price { get; set; }

    public int CategoryId { get; set; }

    public int CompanyId { get; set; }

    public int GenderId { get; set; }

    public int Inventory { get; set; }

    public DateOnly LastUpdatedDate { get; set; }

    public string? Image { get; set; }

    public virtual Category Category { get; set; } = null!;

    public virtual Company Company { get; set; } = null!;

    public virtual Gender Gender { get; set; } = null!;

    public virtual ICollection<PurchaseDetail> PurchaseDetails { get; set; } = new List<PurchaseDetail>();
}

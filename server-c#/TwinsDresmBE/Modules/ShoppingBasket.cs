using System;
using System.Collections.Generic;

namespace TwinsDresmBE.Modules;

public partial class ShoppingBasket
{
    public int Id { get; set; }

    public int CostumerId { get; set; }

    public double Price { get; set; }

    public DateOnly Date { get; set; }

    public string? Remark { get; set; }

    public virtual Costumer Costumer { get; set; } = null!;
}

using System;
using System.Collections.Generic;

namespace TwinsDresmBE.Modules;

public partial class PurchaseDetail
{
    public int Id { get; set; }

    public int ProductId { get; set; }

    public int Amount { get; set; }

    public int? ShoppingId { get; set; }

    public virtual Product Product { get; set; } = null!;
}

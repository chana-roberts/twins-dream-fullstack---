using System;
using System.Collections.Generic;

namespace TwinsDresmBE.Modules;

public partial class Costumer
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string PhoneNumber { get; set; } = null!;

    public string? Mail { get; set; }

    public DateOnly Birthday { get; set; }

    public virtual ICollection<ShoppingBasket> ShoppingBaskets { get; set; } = new List<ShoppingBasket>();
}

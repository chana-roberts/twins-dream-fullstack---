using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.converters
{
    public class CostumerConverter
    {
        public static Dto.CostumerDto ToCostumerDto(Modules.Costumer costumer)
        {
            Dto.CostumerDto newC = new Dto.CostumerDto();
            newC.Id = costumer.Id;
            newC.Name = costumer.Name;
            newC.Mail = costumer.Mail;
            newC.PhoneNumber = costumer.PhoneNumber;
            newC.Birthday = costumer.Birthday;

            return newC;
        }
        //public static List<Dto.CostumerDto> ToProductListDto(List<models.Costumer> co)
        //{
        //    List<Dto.ProductDto> newListP = new List<Dto.ProductDto>();
        //    foreach (Dal.Enteties.Product p in productList)
        //    { newListP.Add(ToProductDto(p)); }
        //    return newListP;
        //}

        //   מה הסיפור עם כל הID???
        public static Modules.Costumer ToCostumerModel(Dto.CostumerDto costumer)
        {
            Modules.Costumer p = new Modules.Costumer();
            p.Name = costumer.Name;
            p.Mail = costumer.Mail;
            p.Birthday = costumer.Birthday;
            p.PhoneNumber = costumer.PhoneNumber;

            return p;

        }

    }
}

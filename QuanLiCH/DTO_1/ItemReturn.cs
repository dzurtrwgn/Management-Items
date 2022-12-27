using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLiCH.DTO_1
{
    public class ItemReturn
    {
        public ItemReturn(int itemreturnId, float quantity, int itemID, float totalprice,DateTime datereturn)
        {
            this.ItemReturnID = itemreturnId;
            this.Quantity = quantity;
            this.ItemID = itemID;
            this.TotalPrice = totalprice;
            this.DateReturn = datereturn;
        }

        public ItemReturn(DataRow row)
        {
            this.ItemReturnID = (int)row["ItemReturnID"];
            this.ItemID = (int)row["ItemID"];
            this.Quantity = (float)Convert.ToDouble(row["Quantity"].ToString());
            this.TotalPrice = (float)Convert.ToDouble(row["Price"].ToString());
            this.DateReturn = (DateTime)row["DateReturn"];
        }

        public int ItemReturnID { get; set; }
        public float Quantity { get; set; }
        public int ItemID { get; set; }
        public float TotalPrice { get; set; }
        public DateTime DateReturn { get; set; }

    }
}


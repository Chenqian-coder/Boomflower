﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public  class KangNaiXinEntity
    {
        int no;

        public int No
        {
            get { return no; }
            set { no = value; }
        }
        string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }


        string introduction;

        public string Introduction
        {
            get { return introduction; }
            set { introduction = value; }
        }
        string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
        double price;

        public double Price
        {
            get { return price; }
            set { price = value; }
        }

        double tprice;

        public double Tprice
        {
            get { return tprice; }
            set { tprice = value; }
        }
        int num;

        public int Num
        {
            get { return num; }
            set { num = value; }
        }
        int count;

        public int Count
        {
            get { return count; }
            set { count = value; }
        }
    }
}

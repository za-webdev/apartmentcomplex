using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Services;
using Models;
using System.Web.Configuration;

namespace ApartmentComplex.Index
{
    public partial class Register : System.Web.UI.Page
    {
        private OwnerInfoService _ownerInfoService;
        public Register()
        {
            _ownerInfoService = new OwnerInfoService();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
      
        protected void OnClick_RegisterOwner(object sender, EventArgs e)
        {
            if (CheckForEmptyValues())
            {
                var info = new Owner
                {   
                    Id = 0,
                    FirstName = FName.Text,
                    LastName = Lname.Text,
                    PhoneNumber = PhoneNum.Text,
                    Email = EmailAdd.Text,
                    UnitNumber = UnitNum.Text,
                    ApartmentNumber = ApartmentNum.Text,
                };
           
                _ownerInfoService.AddownerInfo(info);
                successMsg.Text = "Your information has been registered successfully!";
            }
        }
        protected void OnClick_Cancel(object sender, EventArgs e)
        {
            Response.Redirect(@"\Dashboard.aspx");
        }
        public bool CheckForEmptyValues()
        {
            if (string.IsNullOrWhiteSpace(FName.Text)
                && string.IsNullOrWhiteSpace(Lname.Text)
                && string.IsNullOrWhiteSpace(PhoneNum.Text)
                && string.IsNullOrWhiteSpace(UnitNum.Text)
                && string.IsNullOrWhiteSpace(ApartmentNum.Text)
                )
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}
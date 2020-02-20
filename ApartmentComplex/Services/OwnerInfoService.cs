using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DbAccess;
using Models;

namespace Services
{
    public class OwnerInfoService
    {
        private OwnerRepo _ownerRepo;
        public OwnerInfoService()
        {
            _ownerRepo = new OwnerRepo();
        }
        public void AddownerInfo(Owner ownerInfo)
        {
            if (ownerInfo != null)
            {
                _ownerRepo.AddOwnerInfo(ownerInfo);
            }
        }
        public int ValidateOwnerInfo(string email, string apartmentNum)
        {  
             return _ownerRepo.ValidateOwnerInfo(email, apartmentNum);  
        }
    }
}

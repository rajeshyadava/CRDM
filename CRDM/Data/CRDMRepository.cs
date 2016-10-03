using CRDM.Model.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDM.Data
{
    public class CRDMRepository
    {

        static CRDMRepository _instanace=new CRDMRepository();
        private CRDMRepository()
        {
            
        }
        public static CRDMRepository Instanace
        {
            get
            {
                return _instanace;
            }
        }
        public Person GetPerson(int personId)
        {
            return new Person();
        }
        public List<Person> Search( string searchText, SearchBy searchBy=SearchBy.ByPAN)
        {
            List<Person> persons = new List<Person>();
            CRDMData data = new CRDMData();
            persons = data.People.Where(x => x.TaxID.StartsWith(searchText)).ToList();
            return persons;
        }

        public void SavePerson(Person person)
        {
            using (CRDMData ctx = new CRDMData())
            {
                ctx.People.Add(person);
                ctx.SaveChanges();

            }
            
        }

    }
}

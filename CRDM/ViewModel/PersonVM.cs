using CRDM.Data;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDM.ViewModel
{
    public class PersonVM : ViewModelBase
    {
        Person _person;
        public PersonVM()
        {
            _person = new Person();
        }
        /// <summary>
        /// The <see cref="FirstName" /> property's name.
        /// </summary>
        private string _firstName = null;
        /// <summary>
        /// Sets and gets the FirstName property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string FirstName
        {
            get
            {
                _firstName = _person.FirstName;
                return _firstName;
            }
            set
            {
                Set(() => FirstName, ref _firstName, value);
                _person.FirstName = value;
            }
        }
        private string _lastName;
        public string LastName
        {
            get {
                _lastName = _person.LastName;
                return _lastName;
            }
            set
            {
                Set(() => LastName, ref _lastName, value);
                _person.LastName = value;
            }
        }

        private string _taxID;
        public string TaxID
        {
            get
            {
                _taxID = _person.TaxID;
                return _taxID;
            }
            set
            {
                Set(() => TaxID, ref _taxID, value);
                _person.TaxID = value;
            }
        }
        private RelayCommand _saveCommand;

        /// <summary>
        /// Gets the SaveCommmand.
        /// </summary>
        public RelayCommand SaveCommmand
        {
            get
            {
                return _saveCommand
                    ?? (_saveCommand = new RelayCommand(
                    () =>
                    {
                        OnSave();
                    }));
            }
        }

        private void OnSave()
        {
            CRDMRepository.Instanace.SavePerson(_person);
        }
    }
}

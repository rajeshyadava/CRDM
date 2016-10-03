using System;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using CRDM.Data;
using CRDM.Model.Enums;
using System.Collections.Generic;

namespace CRDM.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// Use the <strong>mvvminpc</strong> snippet to add bindable properties to this ViewModel.
    /// </para>
    /// <para>
    /// You can also use Blend to data bind with the tool's support.
    /// </para>
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class MainViewModel : ViewModelBase
    {
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public MainViewModel()
        {
            ////if (IsInDesignMode)
            ////{
            ////    // Code runs in Blend --> create design time data.
            ////}
            ////else
            ////{
            ////    // Code runs "for real"
            ////}
        }

        private RelayCommand _searchCommand;

        /// <summary>
        /// Gets the SearchCommand.
        /// </summary>
        public RelayCommand SearchCommand
        {
            get
            {
                return _searchCommand
                    ?? (_searchCommand = new RelayCommand(
                    () =>
                    {
                        OnSearch();
                    }));
            }
        }

        /// <summary>
            /// The <see cref="SearchText" /> property's name.
            /// </summary>
        private string _searchText = "";
        /// <summary>
        /// Sets and gets the SearchText property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string SearchText
        {
            get
            {
                return _searchText;
            }
            set
            {
                Set(() => SearchText, ref _searchText, value);
            }
        }

        /// <summary>
        /// The <see cref="SearchResult" /> property's name.
        /// </summary>
        public const string SearchResultPropertyName = "SearchResult";

        private List<Person> _searchResult = null;

        /// <summary>
        /// Sets and gets the SearchResult property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public List<Person> SearchResult
        {
            get
            {
                return _searchResult;
            }
            set
            {
                Set(() => SearchResult, ref _searchResult, value);
            }
        }

        private void OnSearch()
        {
            SearchResult= CRDMRepository.Instanace.Search(SearchText, SearchBy.ByPAN);
        }
    }
}
   M S B A M L   `   `   `  ���� ?  ;CRDM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRDMCRDM      CRDM.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:CRDM       � Title$
  CRDM�� � DataContext ��    Locator �� Source# [   �� Path$
 Main� � 	Resources  �� MergedDictionaries �� Source��  �� $ View\Styles.xaml?�%    .��]� .+�o� $	��Top=�.@�m� $��_Client��.@�m� -   $
��_New��m� $��_Open��m� $��_Save���� m� $��_Exit���  � RowDefinitions �� $
��auto ��� $
��auto ��� $��* � � ColumnDefinitions �� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��0��$	��200������ *
SearchText+�� $��Search��$��0��$��1������ *SearchCommand+]� $��1��.+�	� $��By PAN��	� $��By First Name��	� $��By Last Name��&   System.Windows.Controls.DataGrid  $��2��$��3������ *SearchResult+	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   Header$
 
First Name��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	FirstName+  $
 	Last Name�� �� *
LastName+  $	
 PAN�� �� *TaxID+
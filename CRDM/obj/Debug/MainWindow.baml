   M S B A M L   `   `   `  ����?  ;CRDM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CRDMCRDM  5   	       CRDM.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:CRDM     5   	     � Title$
  CRDM��5   	    � DataContext 5	   	   ��    Locator �� Source# [   �� Path$
 Main� � 	Resources 5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ View\Styles.xaml?�6%   %    5      .��5      ]� .+�5   
   o� $	��Top=�6   .@�5      m� $��_Client��6   .@�5      m� -   5        $
��_New��5      6)   m� 5      $��_Open��6   m� 5      $��_Save��6   �� 5      m� 5      $��_Exit��6   5      5      � 5   
    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5       $��* �6     � ColumnDefinitions 5"      �� 5#      $
��auto �6#   �� 5$      $
��auto �6#   �� 5%      $��* �6#   .+�5'      �� $��0��6   $��0��6#   $	��200��63   ��6?   �� *
SearchText+�� 5(      $��Search��6   $��0��6&   $��1��63   ��6C   �� *SearchCommand+]� 5)      $��1��6   .+�5*      	� $��By PAN��6   	� 5+      $��By First Name��6   	� 5,      $��By Last Name��6   5-      &   System.Windows.Controls.DataGrid  5.      $��2��6   $��3��6$   ��68   �� *SearchResult+	   Columns	 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
First Name��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *	FirstName+  51      $
 	Last Name��6)    6<   �� *
LastName+  52      $	
 PAN��6)    66   �� *TaxID+54      55      56      57      
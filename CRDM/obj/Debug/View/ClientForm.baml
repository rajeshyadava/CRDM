   M S B A M L   `   `   `  ����?  ;CRDM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:CRDM.View	CRDM.View  5   	       CRDM.View.ClientForm   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:CRDM.View     5   	     � Title$  
ClientForm��5   	    � DataContext 5	   	   ��    Locator �� Source# [   �� Path$ Person� � 	Resources 5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ Styles.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��0��6!   $��First Name:��61   �� 5    
   $��0��6   $
��Left=�6   $	��200��6:   $��1��6F   ��6V   �� *	FirstName+�� 5!   
   $��0��6   $��2��6!   $��
Last Name:��61   �� 5"   
   $��0��6   $
��Left=�6   $	��200��6:   $��3��6F   ��6V   �� *
LastName+�� 5#   
   $��1��6   $��0��6!   $��
Last Name:��61   �� 5$   
   $��1��6   $
��Left=�6   $	��200��6:   $��1��6F   ��6V   �� *TaxID+�� 5%   
   $��2��6   $
��Save��6   ��6.   �� *SaveCommmand+5&      5'      
   M S B A M L   `   `   `  ����B  >Cultery, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CulteryCultery  5   	        Cultery.RegistrationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Cultery     5   	     � Title$  RegistrationWindow��5   	   $	��450��6$   $	��800��61   .��5	      � .+�5
   
   ��  �� Orientation$ 
Horizontal=�6   $��0,5,0,0q�6.   .+�5      �� $��Имя��6   �� 5      -   5         ��Name$ NameTextBox��5   a   $	��150��6   $��30��6"   $
��Left=�6.   $	��Top=�6I   6a   �� 5      $��Фамилия��6   �� 5      -   5        $ SNameTextBox��5   a   $	��150��6   $��30��6"   $
��Left=�6.   $	��Top=�6I   6a   �� 5      $��Отчество��6   �� 5      -   5        $ LNameTextBox��5   a   $	��150��6   $��30��6"   $
��Left=�6.   $	��Top=�6I   6a   �� 5      $��Роль��6   �� 5      -   5         ��Name$ RoleComboBox��5   b   $	��140��6   $��30��6#   $
��Left=�6/   $	��Top=�6J    �� DisplayMemberPath$ RoleID��6�    �� SelectedItem 6x   ��  �� ElementName$ RoleComboBox�� �� Path$ SelectedValue.RoleID�6�   5      �� 5   
   $ 
Horizontal=�6   $��0,50,0,0q�6.   .+�5      �� $��Login��6   �� 5      -   5        $ LoginTextBox��5   a   $	��500��6   $��30��6"   $
��Left=�6.   $	��Top=�6I   6a   5      �� 5   
   $ 
Horizontal=�6   $��0,95,0,0q�60   .+�5      �� $��Password��6   �� 5      -   5        $ PasswordBox��5   a   $	��500��6   $��30��6"   $
��Left=�6.   $	��Top=�6I   6a   5      �� 5   
   $ 
Horizontal=�6   $��	0,150,0,0q�60   .+�5       �� -   5         ��Name$ 	RegButton��5    #   $	��REG��6   $��70��66   $��20��6A   $
��Left=�6M   $	��Top=�6h   $��10,0,0,0q�6�   6�   �� 5!      -   5        $ CancelButton��5!   &   $��Cancel��6   $��70��6<   $��20��6G   $
��Left=�6S   $	��Top=�6n   $��10,0,0,0q�6�   6�   5"      5$      5%      
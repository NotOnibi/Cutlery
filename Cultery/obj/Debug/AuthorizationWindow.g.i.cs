// Updated by XamlIntelliSenseFileGenerator 04.04.2023 20:24:20
#pragma checksum "..\..\AuthorizationWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "F42DA82EBE893F42237373F328AB3B2355378E3F4088241CFC5B7C90CB6CFB12"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Cultery.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Cultery.Pages
{


    /// <summary>
    /// AuthorizationWindow
    /// </summary>
    public partial class AuthorizationWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector
    {


#line 12 "..\..\AuthorizationWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox LoginTextBox;

#line default
#line hidden


#line 17 "..\..\AuthorizationWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PasswordBox;

#line default
#line hidden


#line 22 "..\..\AuthorizationWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button OKButton;

#line default
#line hidden

        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent()
        {
            if (_contentLoaded)
            {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Cultery;component/authorizationwindow.xaml", System.UriKind.Relative);

#line 1 "..\..\AuthorizationWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);

#line default
#line hidden
        }

        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target)
        {
            switch (connectionId)
            {
                case 1:
                    this.LoginTextBox = ((System.Windows.Controls.TextBox)(target));
                    return;
                case 2:
                    this.PasswordBox = ((System.Windows.Controls.TextBox)(target));
                    return;
                case 3:
                    this.OKButton = ((System.Windows.Controls.Button)(target));

#line 22 "..\..\AuthorizationWindow.xaml"
                    this.OKButton.Click += new System.Windows.RoutedEventHandler(this.Button_Click);

#line default
#line hidden
                    return;
                case 4:
                    this.CaptchaPanel = ((System.Windows.Controls.StackPanel)(target));
                    return;
                case 5:
                    this.CaptchaText = ((System.Windows.Controls.TextBlock)(target));
                    return;
                case 6:
                    this.CaptchaTextBoxx = ((System.Windows.Controls.TextBox)(target));
                    return;
                case 7:

#line 35 "..\..\AuthorizationWindow.xaml"
                    ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click_2);

#line default
#line hidden
                    return;
            }
            this._contentLoaded = true;
        }

        internal System.Windows.Controls.TextBox CaptchaTextBox;
        internal System.Windows.Controls.TextBox textBox1;
    }
}


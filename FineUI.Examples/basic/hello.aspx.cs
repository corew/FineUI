using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.basic
{
    public partial class hello : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHello_Click(object sender, EventArgs e)
        {
            Alert.Show("你好 FineUI！", MessageBoxIcon.Warning);
        }

        protected void btnHello2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("你好 FineUI！", MessageBoxIcon.Information);
        }

        protected void btnHello3_Click(object sender, EventArgs e)
        {
            Notify.Show("你好 FineUI！", "", NotifyIcon.Success);
        }

        protected void btnHello4_Click(object sender, EventArgs e)
        {
            MessageBox.Show("你好 FineUI！", "", MessageBoxIcon.Question, MessageBoxButtons.YESNOCANCEL,
                yesScript: btnPostback.GetPostBackEventReference("yes"),
                noScript: btnPostback.GetPostBackEventReference("no"),
                cancelScript: btnPostback.GetPostBackEventReference("cancel"));
        }

        protected void btnPostback_Click(object sender, EventArgs e)
        {
            var argument = Request.Params["__EVENTARGUMENT"];

            if (string.IsNullOrEmpty(argument))
            {
                return;
            }

            switch (argument)
            {
                case "yes":
                    Notify.Show("yes");
                    break;
                case "no":
                    Notify.Show("no");
                    break;
                case "cancel":
                    Notify.Show("cancel");
                    break;
                default:
                    // ignored
                    break;
            }
        }
    }
}

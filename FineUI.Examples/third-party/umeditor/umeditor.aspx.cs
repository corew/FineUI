using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class umeditor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                litEditorContent.Text = "<script type=\"text/plain\" name=\"Editor1\" id=\"Editor1\">" +
                     "<p>FineUI（开源版）<br>基于 ExtJS 的开源 ASP.NET 控件库。<br><br>FineUI的使命<br>创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。<br><br>支持的浏览器<br>Chrome、Firefox、Safari、IE 8.0+<br><br>授权协议<br>Apache License 2.0 (Apache)<br><br>相关链接<br>论坛：http://fineui.com/bbs/<br>示例：http://fineui.com/demo/<br>文档：http://fineui.com/doc/<br>下载：http://fineui.codeplex.com/</p>" +
                     "</script>";
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string editorContent = Request.Form["Editor1"].ToString();
            if (String.IsNullOrEmpty(editorContent))
            {
                Alert.ShowInTop("编辑器内容为空！");
            }
            else
            {
                Alert.ShowInTop(HttpUtility.HtmlEncode(editorContent));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string content = "<p><strong>FineUI</strong> - 基于 ExtJS 的开源 ASP.NET 控件库。</p>";

            PageContext.RegisterStartupScript(String.Format("updateEditor({0});", JsHelper.Enquote(content)));
        }





    }
}

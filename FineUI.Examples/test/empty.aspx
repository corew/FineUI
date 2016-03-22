<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empty.aspx.cs" Inherits="FineUI.Examples.test.empty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <asp:Literal runat="server" ID="testLit"></asp:Literal>
</head>
<body>
    <form id="form1" runat="server">

        <f:PageManager ID="PageManager1" runat="server" />

        <f:Panel ID="Panel1" ShowBorder="true" BodyPadding="5px" Width="650px" Title="面板" EnableCollapse="true"
            runat="server">
            <Toolbars>
                <f:Toolbar ID="Toolbar2" runat="server">
                    <Items>
                        <f:Button ID="Button1" runat="server" Text="按钮一"></f:Button>
                        <f:Button ID="Button2" runat="server" Text="按钮二"></f:Button>
                        <f:ToolbarFill ID="ToolbarFill1" runat="server"></f:ToolbarFill>
                        <f:Button ID="Button3" runat="server" Text="按钮三"></f:Button>
                        <f:Button ID="Button4" runat="server" Text="按钮四"></f:Button>
                    </Items>
                </f:Toolbar>
                <f:Toolbar ID="Toolbar3" runat="server">
                    <Items>
                        <f:Button ID="Button5" runat="server" Text="按钮五"></f:Button>
                        <f:ToolbarFill ID="ToolbarFill2" runat="server"></f:ToolbarFill>
                        <f:Button ID="Button8" runat="server" Text="按钮八"></f:Button>
                        <f:ToolbarFill ID="ToolbarFill3" runat="server"></f:ToolbarFill>
                        <f:Button ID="Button9" runat="server" Width="350px" Text="按钮九"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Content>
                <p>
                    <a href="http://tech.163.com/special/jobsdead/" style="font-size: 18px" target="_blank"><b>乔布斯</b></a>
                </p>
                <p>
                    乔布斯于1955年2月24日出生，苹果创始人之一，近年来多次被评为全美最佳CEO，业界评论“苹果就是乔布斯，乔布斯就是苹果”。在乔布斯的带领下，苹果股价去年一路飙升，超越微软成为世界第一大科技公司，今年8月苹果超越埃克森美孚成为全球最大市值企业，截止上季度持有现金达到762亿美金，甚至超过了美国政府国库存款。
                </p>
                <p>
                    遗憾的是，苹果的取得巨大成功还是无法给乔布斯一个健康的身体，乔布斯2003年被发现患有胰脏癌，随后又查出肝癌，危在旦夕的乔布斯在经历了8年的抗癌斗争、3次病休、若干次手术后，于2011年8月25日正式宣布从CEO位置辞职转做公司董事长，原COO库克正式接任乔布斯任CEO。2011年10月6日，乔布斯在苹果发布iPhone 4S后的第二天与世长辞。
                </p>
            </Content>
        </f:Panel>

        <f:Window ID="winShangBaoKouFen" runat="server" Title="按照所选定标准进行对应扣分" IsModal="true" EnableClose="true" EnableResize="false"
            Width="650px" MinHeight="340px" Layout="Fit" Hidden="false" Icon="BasketAdd">
            <Items>

                <f:Form runat="server" ID="formaShangBaoKouFen" Title="按照所选定标准进行对应扣分" ShowHeader="false"
                    MessageTarget="Qtip" ShowBorder="false" LabelWidth="100px" LabelAlign="Top" Layout="HBox" BoxConfigAlign="Stretch" BoxConfigPosition="Left" BoxConfigChildMargin="0 3 0 3">
                    <Items>
                        <f:Panel runat="server" ID="panRiQi" ShowBorder="false" ShowHeader="false" BoxFlex="1" Layout="VBox" BoxConfigAlign="Center" BoxConfigPosition="Center">
                            <Items>
                                <f:Label runat="server" ID="labRiQi" Text="111" ShowEmptyLabel="true" ShowLabel="false"></f:Label>
                                <f:Calendar runat="server" ID="calFaShengRiQi" DateFormatString="yyyy-MM-dd" EnableDateSelectEvent="true"></f:Calendar>
                            </Items>
                        </f:Panel>

                        <f:Panel runat="server" ID="panKouFenXingXi" ShowBorder="false" ShowHeader="false" Layout="VBox" BoxFlex="2">
                            <Items>
                                <f:TextArea runat="server" ID="taKouFenTiaoJian" Label="扣分条件" Readonly="true" Margin="7 0 0 0" AutoGrowHeight="true" AutoGrowHeightMax="60px" AutoGrowHeightMin="5px"></f:TextArea>
                                <f:Label runat="server" ID="labKouFenBiaoZhun" Label="扣分标准" Readonly="true" ShowLabel="false"></f:Label>
                                <f:Panel runat="server" ID="panKouFenZhi" ShowBorder="false" ShowHeader="false" Layout="HBox" BoxConfigAlign="Stretch" BoxConfigPosition="Left">
                                    <Items>
                                        <f:NumberBox runat="server" ID="nbWenTiJianShu" MinLength="1" Label="发生问题件数" MinValue="1" BoxFlex="1" Margin="0 4 0 0"></f:NumberBox>
                                        <f:NumberBox runat="server" ID="nbMeiJianKouFen" Label="每件问题扣分值" MinValue="0" DecimalPrecision="1" BoxFlex="1" Margin="0 0 0 4"
                                            Required="true" CompareMessage="必须填写扣分值">
                                        </f:NumberBox>
                                    </Items>
                                </f:Panel>
                                <f:TextArea runat="server" ID="textKouFenYuanYing" Label="扣分原因" EmptyText="请在此填写此次扣分的原因" Required="true" CompareMessage="必须填写扣分具体原因"></f:TextArea>
                            </Items>
                        </f:Panel>
                    </Items>
                    <Toolbars>
                        <f:Toolbar runat="server" ID="tool2" Position="Bottom" ToolbarAlign="Center">
                            <Items>
                                <f:Button runat="server" ID="btnQueRenKouFen" Text="确认扣分" ConfirmText="确认要对车间进行此项扣分吗？"
                                    ConfirmTitle="请确认" ConfirmTarget="Top" Icon="ApplicationFormAdd" ValidateForms="formaShangBaoKouFen" ValidateTarget="Top">
                                </f:Button>
                                <f:Button runat="server" ID="btnChongZhiBiaoDan" Text="重新填写" Icon="ApplicationFormMagnify"></f:Button>
                                <f:Button runat="server" ID="btnQuXiao" Text="取消" Icon="ApplicationCascade"></f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                </f:Form>
            </Items>
        </f:Window>


    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../res/css/common.css" rel="stylesheet" type="text/css" />
    <style>
        .margin_right {
            margin-right: 10px;
        }

        .type {
            border: 1px solid blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <f:PageManager ID="MainPageManager" AutoSizePanelID="MainRegionPanel" runat="server" />

        <f:RegionPanel ID="MainRegionPanel" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="Region2" Split="true" Width="200px" ShowHeader="false" ShowBorder="false"
                    Title="组织机构树" EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar1" runat="server" Position="Top">
                            <Items>
                                <f:DropDownList ID="ddlUnitConstructionType" Label="类型" EmptyText="--请选择--" LabelWidth="45px" runat="server" Margin="5px" AutoPostBack="true" OnSelectedIndexChanged="ddlUnitConstructionType_SelectedIndexChanged"></f:DropDownList>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Items>
                        <f:Accordion ID="Accordion1" runat="server" ShowBorder="false" ShowHeader="false" ShowCollapseTool="true">
                            <Panes>
                                <f:AccordionPane ID="AccordionPane1" runat="server" Title="工程编码树" IconUrl="~/res/images/16/1.png" BodyPadding="2px 5px"
                                    Layout="Fit" ShowBorder="false">
                                    <Items>
                                        <f:Tree runat="server" EnableArrows="false" AutoScroll="true" AutoLeafIdentification="false" ShowBorder="false"
                                            ShowHeader="false" ID="treeMenu" OnNodeCommand="treeMenu_NodeCommand"
                                            OnNodeLazyLoad="treeMenu_NodeLazyLoad">
                                            <Nodes>
                                            </Nodes>
                                        </f:Tree>
                                        <f:HiddenField ID="txtCode" runat="server"></f:HiddenField>
                                    </Items>
                                </f:AccordionPane>
                            </Panes>
                        </f:Accordion>
                    </Items>
                </f:Region>

                <f:Region ID="RegionCenter" ShowHeader="false" ShowBorder="false" Position="Center" runat="server" Layout="Fit"
                    EnableIFrame="true" IFrameName="mainframe" IFrameUrl="about:blank">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar2" runat="server" ToolbarAlign="Right" Position="Bottom">
                            <Items>
                                <f:Button ID="btnClose" Icon="SystemClose" EnablePostBack="false" runat="server" Text="关闭">
                                    <Menu ID="Menu1" AjaxLoadingType="Default" runat="server"></Menu>
                                </f:Button>
                                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                                </f:ToolbarSeparator>
                                <f:Button ID="btnSaveClose" ValidateForms="SimpleForm1" Icon="SystemSaveClose"
                                    OnClick="btnSaveClose_Click" runat="server" Text="保存后关闭">
                                    <Menu ID="Menu2" AjaxLoadingType="Default" runat="server"></Menu>
                                </f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Items>
                        <f:Form ID="SimpleForm1" ShowBorder="false" LabelAlign="Right" ShowHeader="false" runat="server" BodyPadding="10px" Title="SimpleForm" LabelWidth="100px">
                            <Rows>
                                <f:FormRow ID="FormRow8" runat="server">
                                    <Items>
                                        <f:HiddenField ID="hidId" Text="操作类型" runat="server"></f:HiddenField>
                                        <f:HiddenField ID="hidType" Text="操作类型" runat="server"></f:HiddenField>
                                        <f:HiddenField ID="hidContractorCode" Text="标段编码" runat="server"></f:HiddenField>
                                        <f:HiddenField ID="hidUnitConstructionCode" Text="标段编码" runat="server"></f:HiddenField>
                                        <f:HiddenField ID="hidQualityRateCode" Text="抽检记录编码" runat="server"></f:HiddenField>
                                        <f:TextBox runat="server" ID="txtQualityRateName" Label="抽检记录名称" Required="true" ShowRedStar="true"></f:TextBox>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow1" runat="server">
                                    <Items>
                                        <f:DatePicker runat="server" Required="true" DateFormatString="yyyy-MM-dd" Label="发生日期" BoxFlex="1" EmptyText="请选择发生日期" ID="dpCreateDate" ShowRedStar="True" Width="250px">
                                        </f:DatePicker>
                                    </Items>
                                </f:FormRow>
                                <%--            <f:FormRow runat="server">
                            <Items>
                                <f:NumberBox ID="nboxPassRate" Label="合格率" CssClass="marginr" Width="750px" Required="true" ShowRedStar="true" BoxFlex="1" runat="server" DecimalPrecision="3" NoDecimal="false" MinValue="0" MinLengthMessage="合格率大于0" MaxValue="100" MaxLengthMessage="合格率小于100" MaxLength="6" MinLength="1">
                                </f:NumberBox>
                            </Items>
                        </f:FormRow>--%>

                                <f:FormRow ID="FormRow2" runat="server">
                                    <Items>
                                        <f:Panel ID="Panel2" ShowBorder="false" ShowHeader="false" AutoScroll="true" runat="server" Margin="0px 0px 5px 105px">
                                            <Items>
                                                <f:Grid ID="GridMain" runat="server" BoxFlex="1" ShowBorder="false" ShowHeader="true" Height="350px" Title="抽检项目细则"
                                                    CheckBoxSelectOnly="True" EnableCheckBoxSelect="true" EnableTextSelection="true"
                                                    DataKeyNames="Id,ContractorCode,Score,UnitConstructionCode,UnitConstructionName,Code,Name,Weight,ContractorBaseTemplateCode" PageSize="10"
                                                    SortDirection="DESC" SortField="Id" IsDatabasePaging="true">
                                                    <Columns>
                                                        <f:RowNumberField ID="ctl131" />
                                                        <f:BoundField DataField="Id" ExpandUnusedSpace="true" HeaderText="索引" Hidden="true" ID="ctl141" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl14" />
                                                        <f:BoundField DataField="ContractorCode" ExpandUnusedSpace="true" HeaderText="标段编码" Hidden="true" ID="ctl151" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl15" />
                                                        <f:BoundField DataField="UnitConstructionCode" Width="80px" HeaderText="单位工程编码" TextAlign="center" Hidden="true" ID="ctl161" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl16" />
                                                        <f:BoundField DataField="UnitConstructionName" Width="80px" HeaderText="单位工程" TextAlign="center" ID="ctl171" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl17" />
                                                        <f:BoundField DataField="Code" Width="60px" HeaderText="抽检项目编码" TextAlign="center" Hidden="true" ID="ctl182" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl18" />
                                                        <f:BoundField DataField="Name" Width="120px" HeaderText="抽检项目指标" TextAlign="center" ID="ctl191" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl19" />
                                                        <f:BoundField DataField="UnitConstructionType" Width="80px" HeaderText="单位工程类型" TextAlign="center" ID="ctl201" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl20" Hidden="true" />
                                                        <f:BoundField DataField="Weight" Width="40px" HeaderText="权重" TextAlign="center" ID="ctl211" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl21" />
                                                        <f:BoundField DataField="Target" Width="105px" HeaderText="合格率目标值(%)" TextAlign="center" ID="ctl221" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl22" />
                                                        <f:TemplateField HeaderText="合格率目标值(%)" Width="105px" ID="ctl213" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl23">
                                                            <ItemTemplate>
                                                                <input id="Hidden1" type="hidden" class="weight" runat="server" value='<%# Eval("Weight") %>' />
                                                                <asp:TextBox runat="server" Width="98%" ID="tbxScore" CssClass="score"
                                                                    TabIndex='<%# Container.DataItemIndex + 10 %>' Text='<%# Eval("Score") %>'></asp:TextBox>
                                                            </ItemTemplate>
                                                        </f:TemplateField>
                                                        <f:WindowField ColumnID="editField" TextAlign="Center" Icon="Pencil" ToolTip="上传" HeaderText="附件"
                                                            WindowID="Window1" Title="附件" DataIFrameUrlFields="Id" DataIFrameUrlFormatString="~/DocEditor/ConFileUp.aspx?SortCode=QmQualityRate&FileCode={0}" Width="50px" />
                                                        <f:TemplateField HeaderText="备注" Width="100px" ID="ctl214" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl24" Hidden="true">
                                                            <ItemTemplate>
                                                                <asp:TextBox runat="server" Width="98%" ID="tbxMemo" CssClass="score"
                                                                    TabIndex='<%# Container.DataItemIndex + 10 %>' Text='<%# Eval("Memo") %>'></asp:TextBox>
                                                            </ItemTemplate>
                                                        </f:TemplateField>

                                                        <f:BoundField DataField="ContractorBaseTemplateCode" ExpandUnusedSpace="true" HeaderText="标段抽检项目编码" Hidden="true" ID="ctl1511" ColumnID="Panel1_SimpleForm1_ctl07_Panel2_GridMain_ctl15" />
                                                    </Columns>
                                                </f:Grid>
                                                <f:ContentPanel ID="ContentPanel1" runat="server" CssClass="totalpanel" ShowBorder="true" ShowHeader="false">
                                                    <div style="text-align: right; margin: 1px;">
                                                        <div style="margin-bottom: 1px;">
                                                            <input type="hidden" id="TOTAL_SCORE" name="TOTAL_SCORE" />
                                                            加权平均合格率：<span id="totalScore" style="color: red; font-size: 1.5em; font-weight: bold;"></span>
                                                        </div>
                                                    </div>
                                                </f:ContentPanel>
                                            </Items>
                                        </f:Panel>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow3" runat="server">
                                    <Items>
                                        <f:RadioButtonList runat="server" ID="rblPassResult" Required="true" ShowRedStar="true" Label="通过结果" Width="300px">
                                            <f:RadioItem Text="通过" Value="0" />
                                            <f:RadioItem Text="不通过" Value="1" />
                                        </f:RadioButtonList>
                                        <%--                                <f:DropDownList ID="ddlPassResult" Label="通过结果" runat="server" Required="true" ShowRedStar="true" BoxFlex="1" Width="750px">
                                    <f:ListItem Text="通过" Value="0" />
                                    <f:ListItem Text="不通过" Value="1" />
                                </f:DropDownList>--%>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow4" runat="server">
                                    <Items>
                                        <f:TextBox ID="txtOperatorName" runat="server" Label="操作人" Required="true" ShowRedStar="true" Readonly="true">
                                        </f:TextBox>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow5" runat="server">
                                    <Items>
                                        <f:TextArea ID="txtMemo" runat="server" Label="备注" Height="80px" MaxLength="100">
                                        </f:TextArea>
                                    </Items>
                                </f:FormRow>
                            </Rows>
                        </f:Form>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>
        <f:Window ID="Window3" CloseAction="Hide" runat="server" IsModal="true" Hidden="true"
            Target="Parent" EnableResize="false" EnableMaximize="false" EnableIFrame="true"
            IFrameUrl="about:blank" Width="310px" AutoScroll="false" Height="360px">
        </f:Window>
        <f:Window ID="Window4" CloseAction="Hide" runat="server" IsModal="true" Hidden="true"
            Target="Parent" EnableResize="false" EnableMaximize="false" EnableIFrame="true"
            IFrameUrl="about:blank" Width="1200px" Height="600px" AutoScroll="false">
        </f:Window>

    </form>
</body>
</html>

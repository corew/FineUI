﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_select.aspx.cs" Inherits="FineUI.Examples.tree.select.tree_select" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../res/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px"  EnableCollapse="true" ShowHeader="true" Title="树控件" runat="server">
            <Nodes>
                <f:TreeNode Text="中国" Expanded="true">
                    <f:TreeNode Text="河南省" Expanded="true">
                        <f:TreeNode Text="驻马店市" Expanded="true" NodeID="Zhumadian">
                            <f:TreeNode Text="遂平县" NodeID="Suiping">
                            </f:TreeNode>
                            <f:TreeNode Text="西平县" NodeID="Xiping">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" Enabled="true" NodeID="Luohe" />
                    </f:TreeNode>
                    <f:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                        <f:TreeNode Text="合肥市" NodeID="Hefei">
                        </f:TreeNode>
                        <f:TreeNode Text="黄山市" NodeID="Huangshan">
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
        <br />
        <f:Button ID="btnGetSelectedNode" OnClick="btnGetSelectedNode_Click" CssClass="marginr"
            runat="server" Text="获取选中的节点">
        </f:Button>
        <f:Button ID="btnSelectHefei" OnClick="btnSelectHefei_Click" runat="server" Text="选中“合肥市”">
        </f:Button>
        <br />
        <f:Label ID="labResult" runat="server">
        </f:Label>
        <br />
        <br />
    </form>
</body>
</html>

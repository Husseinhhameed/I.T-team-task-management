<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="ITtask.members" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="membersshow.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <title>members</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="parent">
<div class="div1"> 
<img src="shared/membersedit.svg" alt="Image" class="img-fluid" onclick="location.href='Tasks.aspx'">

</div>
<div class="div2">
  <h2 style=" margin-left:10%;margin-top:5%;">Arrange Your Team</h2>
   <p style=" margin-left:10%;">The strength of the team is its cohesion</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourcemembersshow" CssClass="myGridStyle" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="member" HeaderText="member" SortExpression="member"></asp:BoundField>
            <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSourcemembersshow" ConnectionString='<%$ ConnectionStrings:dboCon %>' DeleteCommand="DELETE FROM [members] WHERE [Id] = @Id" InsertCommand="INSERT INTO [members] ([member], [detail]) VALUES (@member, @detail)" ProviderName='<%$ ConnectionStrings:dboCon.ProviderName %>' SelectCommand="SELECT * FROM [members]" UpdateCommand="UPDATE [members] SET [member] = @member, [detail] = @detail WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member" Type="String"></asp:Parameter>
            <asp:Parameter Name="detail" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member" Type="String"></asp:Parameter>
            <asp:Parameter Name="detail" Type="String"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</div>
        </div>
    </form>
</body>
</html>

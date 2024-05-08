<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Srearcher.aspx.cs" Inherits="ITtask.Srearcher" EnableEventValidation="false" %>

<!doctype html>
<html lang="en">
  <head>
      
      
<style type="text/css">
        body
        {
            font: 12px verdana;
            
        }
        
        .myGridStyle
        {
            border-collapse:collapse;
            box-shadow: 2px 1px 21px -1px rgba(0,0,0,0.75);
-webkit-box-shadow: 2px 1px 21px -1px rgba(0,0,0,0.75);
-moz-box-shadow: 2px 1px 21px -1px rgba(0,0,0,0.75);
         
        }
        
        .myGridStyle tr th
        {
            padding: 8px;
            color: white;
            
        }
        
        
        .myGridStyle tr:nth-child(even)
        {
            background-color: #EEEEEE;
            align-items:center;
        }
        
        .myGridStyle tr:nth-child(odd)
        {
            background-color: #398AB9;
             align-items:center;

        }
        
        .myGridStyle td
        {
            border:1px solid black;
            padding: 8px;
            align-items:center;

        }
        
        .myGridStyle tr:last-child td
        {
        }
    </style>
  	<title>Search Tasks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link href="shared/TAstyle.css" rel="stylesheet" />
	

	  <style type="text/css">
          .auto-style1 {
              position: relative;
              width: 100%;
              -webkit-box-flex: 0;
              -ms-flex: 0 0 100%;
              flex: 0 0 100%;
              max-width: 100%;
              left: 0px;
              top: 1px;
              padding-left: 15px;
              padding-right: 15px;
          }
          .auto-style2 {
              margin-bottom: 1rem;
              height: 93px;
          }
      </style>
	

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
			
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10">
					
                        
                    
						<div class="row">
							<div class="col-md-9 col-lg-7">
                                
								<div class="contact-wrap w-100 p-md-5 p-4">
                                    
                                    <img src="shared/search.png" onclick="location.href='Tasks.aspx'" alt="Searchicon" style="float:inline-start;width:70px;height:70px; "><form method="POST" id="Tasks" name="taskform" class="contactForm" runat="server" >

										&nbsp;<h3 class="mb-4">See the team's achievements<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT DISTINCT [Endor] FROM [Tasks]"></asp:SqlDataSource>
                                        </h3>
                                    
									
										<div class="row">
											<div class="col-md-6">
												<div class="auto-style2">
                                                      
                   
													<label class="label" for="name">Employee</label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Endor" DataValueField="Endor"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="39px" Width="175px">
                                                    <asp:ListItem>Select </asp:ListItem>
                                                    </asp:DropDownList>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</div>
                                                 <div class="col-md-6">
												<div class="form-group">
											        <label class="label" for="name">Department</label>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Height="39px" Width="175px" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataTextField="Dep" DataValueField="Dep">
                                                        <asp:ListItem>Select </asp:ListItem>
                                                        

                                                        <asp:ListItem></asp:ListItem>
                                                         
                                                    </asp:DropDownList>
												   
												</div>
											</div>
											<div class="col-md-6"> 
											    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT DISTINCT [Dep] FROM [Tasks]"></asp:SqlDataSource>
											</div>
                                                                   
											
											<div class="auto-style1">
												<div class="form-group">
											<asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="933px" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#1C658C" BorderStyle="Inset" ForeColor="#660033" CssClass="myGridStyle" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="Name" HeaderText="Data entry" SortExpression="Name" />
                                                    <asp:BoundField DataField="Dep" HeaderText="Departement" SortExpression="Dep" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="Duty" HeaderText="Duty" SortExpression="Duty" />
                                                    <asp:BoundField DataField="Endor" HeaderText="Endoresment" SortExpression="Endor" />
                                                    <asp:BoundField DataField="Comm" HeaderText="Comment" SortExpression="Comm" />
                                                </Columns>
                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT * FROM [Tasks] WHERE ([Endor] = @Endor)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList1" Name="Endor" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
                    <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="933px" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#1C658C" BorderStyle="Inset" ForeColor="#660033" CssClass="myGridStyle" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                     <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="Name" HeaderText="Data entry" SortExpression="Name" />
                                                    <asp:BoundField DataField="Dep" HeaderText="Departement" SortExpression="Dep" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="Duty" HeaderText="Duty" SortExpression="Duty" />
                                                    <asp:BoundField DataField="Endor" HeaderText="Endoresment" SortExpression="Endor" />
                                                    <asp:BoundField DataField="Comm" HeaderText="Comment" SortExpression="Comm" />
                                                </Columns>
                                                    </asp:GridView>                     

												    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT * FROM [Tasks] WHERE ([Dep] = @Dep)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList2" Name="Dep" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>

												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													
                                                    
													
                    <asp:GridView ID="GridView3" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Width="933px" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#1C658C" BorderStyle="Inset" ForeColor="#660033" CssClass="myGridStyle" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                      <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="Name" HeaderText="Data entry" SortExpression="Name" />
                                                    <asp:BoundField DataField="Dep" HeaderText="Departement" SortExpression="Dep" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="Duty" HeaderText="Duty" SortExpression="Duty" />
                                                    <asp:BoundField DataField="Endor" HeaderText="Endoresment" SortExpression="Endor" />
                                                    <asp:BoundField DataField="Comm" HeaderText="Comment" SortExpression="Comm" />
                                                </Columns>
                                                    </asp:GridView>                     

												    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT * FROM [Tasks] ORDER BY [Date] DESC"></asp:SqlDataSource>
													
                                                    
													
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
	</section>


<script src="shared/TAjquery.min.js"></script>
<script src="shared/TApopper.js"></script>
<script src="shared/TAbootstrap.min.js"></script>

<script src="shared/TAmain.js"></script>
 

	</body>
</html>












<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
            height: 318px;
            margin-right: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT DISTINCT [Name] FROM [Tasks]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Height="24px" Width="277px">
                <asp:ListItem>select calue</asp:ListItem>
            </asp:DropDownList>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="933px" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Dep" HeaderText="Dep" SortExpression="Dep" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Duty" HeaderText="Duty" SortExpression="Duty" />
                            <asp:BoundField DataField="Endor" HeaderText="Endor" SortExpression="Endor" />
                            <asp:BoundField DataField="Comm" HeaderText="Comm" SortExpression="Comm" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT * FROM [Tasks] WHERE ([Name] = @Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>--%>

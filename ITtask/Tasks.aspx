<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="ITtask.Tasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	  	<title>Tasks Submit</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css' />

	<link href="shared/TAstyle.css" rel="stylesheet" />
	<script src="shared/sweetalert.js" type="text/javascript"></script>
	<script>
          function alertme() {

              Swal.fire({
                  icon: 'success',
                  title: 'Thank you.. proud of your achievement',
                  showConfirmButton: false,
                  timer: 2500
              })
          }
    </script>

</head>
<body>
    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
			
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="wrapper img" style="background-image: url(shared/TAimg.jpg);">
                        
                   &nbsp;<asp:Label ID="lbName" runat="server"></asp:Label>
                        
                   <asp:Label ID="lbtyp" runat="server"></asp:Label>
                       
                                                   

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                                                   

						<div class="row">
							<div class="col-md-9 col-lg-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<%--<h3 class="mb-4">Record your achievements</h3>--%>
									
									
									<form method="POST" id="Tasks" name="taskform" cssclass="contactForm" runat="server">
									<asp:Button ID="Button3" runat="server"   OnClick="Button3_Click" Text="Reporting" style="margin-bottom: 40px;" Cssclass="btn btn-primary" />
										
									<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add Agent" style="margin-bottom: 40px;" Cssclass="btn btn-primary"   />
									<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" New Teammate" style="margin-bottom: 40px;" Cssclass="btn btn-primary"   />
									<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text=" Members" style="margin-bottom: 40px;" Cssclass="btn btn-primary"   />

										<h3 class="mb-4">Record your achievements</h3>
										<div class="row">

											<div class="col-md-6">

												<div class="form-group">
                                                      
													<label class="label" for="name">Department</label>
                                                    
													<asp:DropDownList ID="DrDep" runat="server" class="form-control" OnSelectedIndexChanged="DrDep_SelectedIndexChanged" >
                                                     <asp:ListItem>select department</asp:ListItem>

													<asp:ListItem>سكرتارية مديرالمكتب</asp:ListItem>
                                                    <asp:ListItem>فريق متابعة اللجان</asp:ListItem>
                                                    <asp:ListItem>الدائرة الادارية</asp:ListItem>
                                                        <asp:ListItem>قسم البريد </asp:ListItem>
                                                        <asp:ListItem>قسم الصادر</asp:ListItem>
                                                        <asp:ListItem>قسم الوارد</asp:ListItem>
                                                        <asp:ListItem>الموارد البشرية</asp:ListItem>
                                                        <asp:ListItem>مكتب مديرعام الشؤون الادارية والمالية</asp:ListItem>
                                                        <asp:ListItem>قسم الحسابات</asp:ListItem>
                                                        <asp:ListItem>قسم المالية</asp:ListItem>
                                                        <asp:ListItem>قسم التدقيق</asp:ListItem>
                                                        <asp:ListItem>المشتريات والمخازن</asp:ListItem>
                                                        <asp:ListItem>القلم السري</asp:ListItem>
                                                        <asp:ListItem>قسم الرواتب</asp:ListItem>
                                                        <asp:ListItem>الدائرة الهندسية</asp:ListItem>
                                                        <asp:ListItem>المكتب الاعلامي</asp:ListItem>
                                                        <asp:ListItem>القصر الحكومي</asp:ListItem>
                                                        <asp:ListItem>قصر الزقورة</asp:ListItem>
                                                        <asp:ListItem>دائرة التنسيق والمراسم</asp:ListItem>
                                                        <asp:ListItem>هيئة التنسيق بين المحافظات</asp:ListItem>
                                                        <asp:ListItem>المستشار المالي</asp:ListItem>
                                                        <asp:ListItem>المستشار الاقتصادي</asp:ListItem>
                                                        <asp:ListItem>هيئة المستشارين</asp:ListItem>
                                                        <asp:ListItem>باجات المنطقة الخضراء</asp:ListItem>
                                                        <asp:ListItem>قسم اصدار هويات المكتب</asp:ListItem>
                                                        <asp:ListItem>القسم الهندسي</asp:ListItem>
                                                        <asp:ListItem>مستشار شؤون التنمية الادارية</asp:ListItem>
                                                        <asp:ListItem>مستشار رئيس الوزراء</asp:ListItem>
                                                        <asp:ListItem>اخرى</asp:ListItem>
                                                        <asp:ListItem>القانونية</asp:ListItem>
                                                        <asp:ListItem>التدريب والتطوير</asp:ListItem>
                                                        <asp:ListItem>قسم عقارات الدولة</asp:ListItem>
                                                        <asp:ListItem>دائرة الشؤون الاستراتيجية</asp:ListItem>
                                                        <asp:ListItem>الكاميرات</asp:ListItem>
                                                        <asp:ListItem>الاستعلامات </asp:ListItem>
														 <asp:ListItem>اخرى</asp:ListItem>

                                                        <asp:ListItem></asp:ListItem>
                                                    </asp:DropDownList>

                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="date">Date</label>
													 <asp:TextBox ID="txDate" runat="server" Cssclass="form-control"  TextMode="Date" ></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqdate" ControlToValidate="txDate" ValidationGroup="tsks" runat="server" ErrorMessage="Please Enter the Date"></asp:RequiredFieldValidator>
												</div>
											</div>
                                                 <div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Duty</label>
													<asp:TextBox ID="txDuty" runat="server" Cssclass="form-control" OnTextChanged="txDuty_TextChanged1"></asp:TextBox>
													<asp:RequiredFieldValidator ID="reqduty" ControlToValidate="txDuty" ValidationGroup="tsks" runat="server" ErrorMessage="Please Enter your Duty"></asp:RequiredFieldValidator>

												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="email">Endoresement</label>
													<asp:DropDownList ID="DropDownList1" runat="server" Cssclass="form-control" DataSourceID="SqlDataSourcemembers" DataTextField="member" DataValueField="member"></asp:DropDownList>
													<asp:SqlDataSource ID="SqlDataSourcemembers" runat="server" ConnectionString="<%$ ConnectionStrings:dboCon %>" ProviderName="<%$ ConnectionStrings:dboCon.ProviderName %>" SelectCommand="SELECT DISTINCT [member] FROM [members]"></asp:SqlDataSource>

                                                    
												</div>
											</div>
                                                                   
											
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Details</label>
													<asp:TextBox ID="txCom" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" ></asp:TextBox>

												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													
                                                     <asp:Button ID="Button2" runat="server"  value="button" Text="Submit Task"  Cssclass="btn btn-primary" OnClick="Button2_Click" ValidationGroup="tsks"  />

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
		</div>
	</section>
</body>

</html>

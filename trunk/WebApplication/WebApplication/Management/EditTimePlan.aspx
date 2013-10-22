<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="EditTimePlan.aspx.cs" Inherits="WebApplication.Management.EditTimePlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/bootstrap-datepicker.js" type="text/javascript"></script>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         $(document).ready(function () {
             $("#mi7").addClass("current-menu-item");
             $(".date-picker").datepicker({ format: "dd/mm/yyyy" });
         });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="uiPanelViewAllTimes" runat="server" Visible="true">
    
 <section class="content">
 <section class="columns">
			<article class="col1">
				<h2> مواعيد الخريطة الزمنية</h2>	
                 <asp:LinkButton ID="uiLinkButtonAdd" runat="server" CssClass="btn purple" OnClick="uiLinkButtonAdd_Click" >إضافة ميعاد جديد</asp:LinkButton>
                <asp:GridView ID="uiGridViewTimes" runat="server" AutoGenerateColumns="false" OnRowCommand="uiGridViewTimes_RowCommand"
                             HorizontalAlign="Center" Width="70%" AllowPaging="True" 
                    onpageindexchanging="uiGridViewTimes_PageIndexChanging" CssClass="rtl" >
                            <Columns>                                
                                <asp:BoundField DataField="Title" HeaderText="البيان " />
                                <asp:BoundField DataField="PublishedDate" HeaderText="السنة " DataFormatString="{0:yyyy}" />
                                <asp:CheckBoxField DataField="IsVisible" HeaderText="مرئى " ControlStyle-Width="20px"/>
                                <asp:TemplateField HeaderText="إجراءات">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="uiLinkButtonEdit" runat="server" CommandArgument='<%# Eval("TimePlanID") %>'
                                            CommandName="EditTime">تعديل</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="uiLinkButtonDelete" runat="server" CommandArgument='<%# Eval("TimePlanID") %>' OnClientClick="return confirm('Are you want to delete this record?');"
                                            CommandName="DeleteTime">حذف</asp:LinkButton>&nbsp;
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle HorizontalAlign="Center" />
                            <PagerStyle HorizontalAlign="Center" CssClass="wp-pagenavi" />
                            <RowStyle HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                            لا يوجد بيانات متاحة
                            </EmptyDataTemplate>
                        </asp:GridView>			
			</article>
            
           
		</section> 
        </section>           
        </asp:Panel>
        <asp:Panel ID="uiPanelEdit" runat="server" Visible="true">
         <section class="content">
        <section class="columns">
			<article class="col1">
            <h2>
                    تعديل مواعيد الخريطة الزمنية</h2>
                    </article>
                    </section>
                   <div  class="form2">
                   <p><label for="uiTextBoxName" style="width:15%">الإسم</label><asp:TextBox ID="uiTextBoxName" runat="server"></asp:TextBox></p>
                   <p><label for="uiTextBoxDate" style="width:15%">التاريخ</label><asp:TextBox ID="uiTextBoxDate" runat="server" CssClass="date-picker"></asp:TextBox></p>
                   <p><label for="uiCheckBoxVisible" style="width:15%">مرئى</label><asp:CheckBox ID="uiCheckBoxVisible" runat="server" /></p>
                   <p style="padding-right:15%">                    
                       <asp:LinkButton ID="uiButtonOk" runat="server" CssClass="btn purple" 
                           onclick="uiButtonOk_Click" >تعديل</asp:LinkButton>
                       <asp:LinkButton ID="uiButtonCancel" runat="server" CssClass="btn light-gray" 
                           onclick="uiButtonCancel_Click">إلغاء</asp:LinkButton>
					</p>
                   </div>
                   </section>
        </asp:Panel>
</asp:Content>

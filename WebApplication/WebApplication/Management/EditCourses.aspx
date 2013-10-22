<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="EditCourses.aspx.cs" Inherits="WebApplication.Management.EditCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $("#mi3").addClass("current-menu-item");
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="uiPanelViewAllPages" runat="server" Visible="true">
 <section class="content">
 <section class="columns">
			<article class="col1">
				<h2> الكورسات الحالية</h2>	
                <asp:GridView ID="uiGridViewCourses" runat="server" AutoGenerateColumns="false" OnRowCommand="uiGridViewCourses_RowCommand"
                             HorizontalAlign="Center" Width="70%" AllowPaging="True" 
                    onpageindexchanging="uiGridViewCourses_PageIndexChanging" CssClass="rtl" >
                            <Columns>                                
                                <asp:BoundField DataField="Name" HeaderText="الكورس " />
                                <asp:TemplateField HeaderText="إجراءات">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="uiLinkButtonEdit" runat="server" CommandArgument='<%# Eval("CourseID") %>'
                                            CommandName="EditCourse">تعديل</asp:LinkButton>&nbsp;
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
                    تعديل الكورسات</h2>
                    </article>
                    </section>
                   <div  class="form2">
                   <p><label for="uiTextBoxName" style="width:15%">الإسم</label><asp:TextBox ID="uiTextBoxName" runat="server"></asp:TextBox></p>
                   <p><label for="uiTextBoxLevel" style="width:15%">المستوى</label><asp:TextBox ID="uiTextBoxLevel" runat="server"></asp:TextBox></p>
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

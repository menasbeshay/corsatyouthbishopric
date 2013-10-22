<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="WebApplication.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="content">
		<section class="columns e404">
			<article class="col2">	
            <p></p>		
				<p class="msg error">عفواً ، حدث خطأ فى الموقع!</p>
			</article><article class="col2">				
				<p><a href="Default.aspx" class="btn large purple">عودة للصفحة الرئيسية</a></p>
			</article>
		</section>
	</section>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="NotFound.aspx.cs" Inherits="WebApplication.NotFound" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="content">
		<section class="columns e404">
			<article class="col2">
				<p class="e404"></p>
				<p class="msg error">عفواً ، هذه الصفحة غير موجودة!</p>
			</article><article class="col2">
				<p><a href="Default.aspx" class="btn large purple">عودة للصفحة الرئيسية</a></p>
			</article>
		</section>
	</section>
</asp:Content>

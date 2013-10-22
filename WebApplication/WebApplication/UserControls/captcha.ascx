<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="captcha.ascx.cs" Inherits="WebApplication.UserControls.captcha" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

    <recaptcha:RecaptchaControl
    ID="recaptcha"
    runat="server"
    PublicKey="6Ldv9ugSAAAAALBWtk3JXC_KqzilllMD-iawGbmQ"
    PrivateKey="6Ldv9ugSAAAAADCuEG1b4Maihc2L3a5s19bacrDG"
    />
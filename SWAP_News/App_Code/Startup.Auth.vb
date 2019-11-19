﻿Imports Owin
Imports Microsoft.Owin.Security.Cookies
Imports Microsoft.Owin.Security.Google
Imports Microsoft.Owin

Partial Public Class Startup
    ' 如需設定驗證的詳細資訊，請前往 https://go.microsoft.com/fwlink/?LinkId=301883
    Public Sub ConfigureAuth(app As IAppBuilder)
        ' 啟用應用程式以使用 Cookie 來儲存已登入使用者的資訊
        ' 也儲存透過第三方登入提供者登入的使用者資訊。
        ' 若您的應用程式允許使用者登入，則此為必要項目
        app.UseCookieAuthentication(New CookieAuthenticationOptions() With {
        .AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
        .LoginPath = New PathString("/Account/Login")})
        app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie)

        ' 取消註解下列行以啟用透過第三方登入提供者的登入
        'app.UseMicrosoftAccountAuthentication(
        '    clientId:= "",
        '    clientSecret:= "")

        'app.UseTwitterAuthentication(
        '   consumerKey:= "",
        '   consumerSecret:= "")

        'app.UseFacebookAuthentication(
        '   appId:= "",
        '   appSecret:= "")

        'app.UseGoogleAuthentication(New GoogleOAuth2AuthenticationOptions() With {
        '   .ClientId = "",
        '   .ClientSecret = ""})
    End Sub
End Class

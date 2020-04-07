
Partial Class IlhaPura
    Inherits System.Web.UI.Page
    Private Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        Dim ok As Boolean = True

        If tnome.Text.Trim = "" Then
            ok = False

        End If
        If tTelefone.Text.Trim = "" Then
            ok = False

        End If
        If tEmail.Text.Trim = "" Or Not tEmail.Text.Trim.Contains("@") Or Not tEmail.Text.Trim.Contains(".") Or tEmail.Text.Trim.EndsWith("@") Or tEmail.Text.Trim.StartsWith("@") Or tEmail.Text.Trim.EndsWith(".") Or tEmail.Text.Trim.StartsWith(".") Then
            ok = False
        End If

        If ok Then
            'Define os dados do e-mail
            Dim nomeRemetente As String
            Dim emailRemetente As String

            Dim telefoneremetente As String

            nomeRemetente = "contact-name"
            emailRemetente = "contact-email"
            telefoneremetente = "contact-telephone"
            'senha = "senha do email"

            Dim emailDestinatario As String
            'Dim emailComCopia As String
            'Dim emailComCopiaOculta As String

            emailDestinatario = "bueno.mb55@gmail.com"
            'emailComCopia = "email@comcopia.com.br"
            'emailComCopiaOculta = "email@comcopiaoculta.com.br"


            'Host da porta SMTP
            Dim SMTP As String

            SMTP = "smtp.sendgrid.net"
            Dim conteudoMensagem As String
            Dim assuntomensagem As String

            conteudoMensagem = tMensagem.Text
            assuntomensagem = "Landing Page Fontano - Cadastro "

            'Cria objeto com dados do e-mail.
            Dim objEmail As New System.Net.Mail.MailMessage()

            'Define o Campo From e ReplyTo do e-mail.
            objEmail.From = New System.Net.Mail.MailAddress(tEmail.Text, tnome.Text)


            'objEmail.ReplyTo = New System.Net.Mail.MailAddress("Nome <@seudominio.com.br>")'

            'Define os destinatários do e-mail.
            objEmail.To.Add(emailDestinatario)

            'Define a prioridade do e-mail.
            objEmail.Priority = System.Net.Mail.MailPriority.Normal

            'Define o formato do e-mail HTML (caso não queira HTML alocar valor false)
            objEmail.IsBodyHtml = True



            'Define o corpo do e-mail.
            objEmail.Body = "" & " Meu telefone é: " & tTelefone.Text & "<br>" & "Mensagem: " & conteudoMensagem

            'Para evitar problemas com caracteres "estranhos", configuramos o Charset para "ISO-8859-1"
            objEmail.SubjectEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1")
            objEmail.BodyEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1")

            'Cria objeto com os dados do SMTP
            Dim objSmtp As New System.Net.Mail.SmtpClient(SMTP, 587)

            'Assunto mensagem'
            objEmail.Subject = assuntomensagem

            'Alocamos o endereço do host para enviar os e-mails  
            objSmtp.Credentials = New System.Net.NetworkCredential("mbueno", "LopesRJ2018!")
            objSmtp.Host = SMTP
            objSmtp.Port = 587

            'Caso utilize conta de email do exchange da locaweb deve habilitar o SSL
            'objEmail.EnableSsl = true;

            'Enviamos o e-mail através do método .send()


            objSmtp.Send(objEmail)




            'excluímos o objeto de e-mail da memória
            objEmail.Dispose()
            'anexo.Dispose();
        Else
        End If
    End Sub
End Class

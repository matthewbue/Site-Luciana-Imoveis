Imports Microsoft.VisualBasic
Imports wsCRM

Public Class Utils
    Shared Function enviarContato(nome As String, email As String, telefone As String, mensagem As String, Optional origem As String = "LANDING PAGE") As String

        Try

            Dim ok As Boolean = True

            If nome.Trim = "" Then
                ok = False

            End If
            If telefone.Trim = "" Then
                ok = False

            End If
            If email.Trim = "" Then
                ok = False
            End If

            If ok Then

                'Define os dados do e-mail
                Dim nomeRemetente As String = "contact-name"
                Dim emailRemetente As String = "contact-email"
                Dim telefoneremetente As String = "contact-telephone"

                'senha = "senha do email"
                Dim emailDestinatario As String = "matheusbueno@lopesbsj.com.br"

                'Host da porta SMTP
                Dim SMTP As String

                SMTP = "smtp.sendgrid.net"
                Dim conteudoMensagem As String
                Dim assuntomensagem As String

                conteudoMensagem = mensagem
                assuntomensagem = "Landing Page - Cadastro "

                'Cria objeto com dados do e-mail.
                Dim objEmail As New System.Net.Mail.MailMessage()

                'Define o Campo From e ReplyTo do e-mail.
                objEmail.From = New System.Net.Mail.MailAddress(email, nome)


                'objEmail.ReplyTo = New System.Net.Mail.MailAddress("Nome <@seudominio.com.br>")'

                'Define os destinatários do e-mail.
                objEmail.To.Add(emailDestinatario)

                'Define a prioridade do e-mail.
                objEmail.Priority = System.Net.Mail.MailPriority.Normal

                'Define o formato do e-mail HTML (caso não queira HTML alocar valor false)
                objEmail.IsBodyHtml = True

                'Define o corpo do e-mail.
                objEmail.Body = "" & " Meu telefone é: " & telefone & "<br>" & "Mensagem: " & conteudoMensagem

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

                Dim ret As String = ""


                'excluímos o objeto de e-mail da memória

                'anexo.Dispose();

            Else
                Return "Preencha todos os campos!"
            End If

            Return "ok"

        Catch ex As Exception
            Return ex.Message
        End Try

    End Function

End Class

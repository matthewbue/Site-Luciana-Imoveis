<%@ Page Language="VB" AutoEventWireup="false" CodeFile="imoveis.aspx.vb" Inherits="imoveis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
<input type="button" onclick="$('html,body').animate({scrollTop: $('#vemaqui').offset().top}, 2000);" value="Veja Funcionando" />

        </div>
    </form>
</body>
    <script type="text/javascript">
            $('html, body').animate({
scrollTop: $("#vemaqui").offset().top
}, 2000);
  
</script>

</html>
     
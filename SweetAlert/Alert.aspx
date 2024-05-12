<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alert.aspx.cs" Inherits="SweetAlert.Alert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="sweetalert2.min.css" />
    <script type="text/javascript">
        function AlertMessage(Title, message, MessageType) {
            Swal.fire
                (
                    Title, message, MessageType
                )
        }
    </script>
   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="text-center">
            <button runat="server" id="BtnClick" class="btn btn-primary mt-5 font-weight-bold" onserverclick="BtnClick_ServerClick">Click Me For Warning Message</button>

             <button runat="server" id="Button1" class="btn btn-success mt-5 font-weight-bold" onserverclick="Button1_ServerClick">Click Me For Success Message</button>

             <button runat="server" id="Button2" class="btn btn-info mt-5 font-weight-bold" onserverclick="Button2_ServerClick">Click Me For Info Message</button>

             <button runat="server" id="Button3" class="btn btn-danger mt-5 font-weight-bold" onserverclick="Button3_ServerClick">Click Me Danger Message</button>
        </div>
    </form>
</body>
</html>

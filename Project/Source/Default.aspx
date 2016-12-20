<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JS/jquery-3.1.1.min.js"></script>
    <script src="JS/jquery.bxslider.min.js"></script>
    <script src="JS/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <style type="text/css">
                #audio-preview {
                    background: #ffffff;
                    width: auto;
                    padding: 20px;
                    display: inline-block;
                }

                #audio-upload {
                    cursor: pointer;
                    background-color: #bdc3c7;
                    color: #ecf0f1;
                    padding: 20px;
                    font-size: 20px;
                    text-transform: uppercase;
                }
            </style>

            <script type="text/javascript">
                $(document).ready(function () {
                    $.uploadPreview({
                        input_field: "#audio-upload",
                        preview_box: "#audio-preview",
                        no_label: true
                    });
                });
            </script>

            <div id="audio-preview">No file selected</div>
            <br />
            <input type="file" name="audio" id="audio-upload" />
        </div>
    </form>
</body>
</html>

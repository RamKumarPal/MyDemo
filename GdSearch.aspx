<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GdSearch.aspx.vb" Inherits="GdSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" 
  type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=gddrtdrat.ClientID%> tr:has(td)").each(function () {
                var cell = $(this).find("td:eq(0)");
                alert(cell.html());
            });

        });
    </script>


</head>
<body>
    <form id="form1" runat="server">
   <div>

        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
       <asp:GridView ID="gddrtdrat" runat="server"  DataKeyNames="ID"
                AutoGenerateColumns="False"  EmptyDataText="No records found.">
                <Columns>
                    <asp:TemplateField HeaderText="ID" Visible="false">

                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NAME OF DRT AND DRAT">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtnameofdrtdrat" runat="server"  Text='<%# Eval("NAMEOFDRTDRAT") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtnameofdrtdrat" runat="server" ErrorMessage="required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblname" runat="server" ToolTip="NAME OF DRT AND DRAT" Text='<%# Bind("NAMEOFDRTDRAT") %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NAME OF CPIO">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtnameofcpio" runat="server" Text='<%# Eval("NAMEOFCPIO") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Reqcpio" ControlToValidate="txtnameofcpio" runat="server" ErrorMessage="required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lblcpio" runat="server" ToolTip="NAME OF CPIO" Text='<%# Bind("NAMEOFCPIO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DESIGNATION">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtdesignationcpio" runat="server" Text='<%# Eval("DESIGNATION") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Reqdesig" ControlToValidate="txtdesignationcpio" runat="server" ErrorMessage="required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lbldesig" runat="server" ToolTip="DESIGNATION" Text='<%# Bind("DESIGNATION") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="NAME OF FIRST APPELLATE AUTHORITY">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtfirstappauth" runat="server" Text='<%# Eval("NAMEOFFIRSTAPPLLATEAUTHORITY") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Reqfirst" ControlToValidate="txtfirstappauth" runat="server" ErrorMessage="required"></asp:RequiredFieldValidator>

                        </EditItemTemplate>

                        <ItemTemplate>

                            <asp:Label ID="lblfirap" runat="server" ToolTip="NAME OF FIRST APPELLATE AUTHORITY" Text='<%# Bind("NAMEOFFIRSTAPPLLATEAUTHORITY") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DESIGNATION">

                        <EditItemTemplate>
                            <asp:TextBox ID="txtdesignationofauth" runat="server" Text='<%# Eval("DESIGNATION1") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Reqdesig1" ControlToValidate="txtdesignationofauth" runat="server" ErrorMessage="required"></asp:RequiredFieldValidator>

                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="lbldesign" ToolTip="DESIGNATION" runat="server" Text='<%# Bind("DESIGNATION1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                   

                     <asp:TemplateField HeaderText="Check">

                        

                        <ItemTemplate>
                            <asp:CheckBox ID="chkdelete" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
               

                   


                </Columns>
              
                    
                
            </asp:GridView>
    </div>
    </form>
</body>
</html>

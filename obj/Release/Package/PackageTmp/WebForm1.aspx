<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WestcoastEducation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            width: 149px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Westcoast Education"></asp:Label>
        </p>
        <asp:Label ID="Label11" runat="server" Text=" "></asp:Label>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Ny Användare"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Förnamn: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Efternamn:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Epost: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Mobilnummer: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Adress: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrera" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Inlämning1MikaelJensenConnectionString %>" DeleteCommand="DELETE FROM [Kurser] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Kurser] ([Titel], [Aktiv], [Beskrivning]) VALUES (@Titel, @Aktiv, @Beskrivning)" SelectCommand="SELECT * FROM [Kurser]" UpdateCommand="UPDATE [Kurser] SET [Titel] = @Titel, [Aktiv] = @Aktiv, [Beskrivning] = @Beskrivning WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Titel" Type="String" />
                            <asp:Parameter Name="Aktiv" Type="String" />
                            <asp:Parameter Name="Beskrivning" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Titel" Type="String" />
                            <asp:Parameter Name="Aktiv" Type="String" />
                            <asp:Parameter Name="Beskrivning" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <hr />
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Skapa Ny Kurs"></asp:Label>
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Titel:
                <asp:TextBox ID="TitelTextBox" runat="server" Text='<%# Bind("Titel") %>' />
                <br />
                Aktiv:
                <asp:TextBox ID="AktivTextBox" runat="server" Text='<%# Bind("Aktiv") %>' />
                <br />
                Beskrivning:
                <asp:TextBox ID="BeskrivningTextBox" runat="server" Text='<%# Bind("Beskrivning") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Titel:
                <asp:TextBox ID="TitelTextBox" runat="server" Text='<%# Bind("Titel") %>' />
                <br />
                Aktiv:
                <asp:TextBox ID="AktivTextBox" runat="server" Text='<%# Bind("Aktiv") %>' />
                <br />
                Beskrivning:
                <asp:TextBox ID="BeskrivningTextBox" runat="server" Text='<%# Bind("Beskrivning") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Id:</td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Titel:</td>
                        <td>
                            <asp:Label ID="TitelLabel" runat="server" Text='<%# Bind("Titel") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Aktiv:</td>
                        <td>
                            <asp:Label ID="AktivLabel" runat="server" Text='<%# Bind("Aktiv") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Beskrivning:</td>
                        <td>
                            <asp:Label ID="BeskrivningLabel" runat="server" Text='<%# Bind("Beskrivning") %>' />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Kurser:"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Titel" HeaderText="Titel" SortExpression="Titel" />
                        <asp:BoundField DataField="Aktiv" HeaderText="Aktiv" SortExpression="Aktiv" />
                        <asp:BoundField DataField="Beskrivning" HeaderText="Beskrivning" SortExpression="Beskrivning" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <hr />

        <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Sök Kurs"></asp:Label>
        <br />

        <asp:TextBox ID="Textsearch" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sök" />
        <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="Hittades ej!">

        </asp:GridView>
        <br />
        <br />
        <br />
    </form>
</body>
</html>

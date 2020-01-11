<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="House_Rent_Service.Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <h3>Room</h3>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="RoomId" DataSourceID="dsRoom">

                        <Columns>
                            <asp:BoundField DataField="RoomId" HeaderText="RoomId" ReadOnly="True" SortExpression="RoomId" />
                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                            <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="dsRoom" runat="server" ConnectionString="<%$ ConnectionStrings:HouseRentDBConText %>" DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [Room] ([RoomId], [location], [Rent]) VALUES (@RoomId, @location, @Rent)" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [location] = @location, [Rent] = @Rent WHERE [RoomId] = @RoomId">
                        <DeleteParameters>
                            <asp:Parameter Name="RoomId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="RoomId" Type="Int32" />
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="Rent" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="Rent" Type="Decimal" />
                            <asp:Parameter Name="RoomId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

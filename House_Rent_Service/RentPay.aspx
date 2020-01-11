<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RentPay.aspx.cs" Inherits="House_Rent_Service.RentPay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <h3>RentPay</h3>
                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="rentPayId" DataSourceID="dsAddPayRent">
                        <Fields>
                            <asp:BoundField DataField="rentPayId" HeaderText="RentPay Id" InsertVisible="False" ReadOnly="True" SortExpression="rentPayId" />
                            <asp:BoundField DataField="monthName" HeaderText="Month Name" SortExpression="monthName" />
                            <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount" SortExpression="PaidAmount" />
                            <asp:TemplateField HeaderText="Pay date" SortExpression="paydate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("paydate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("paydate") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("paydate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="memberId" HeaderText="Member Id" SortExpression="memberId" />
                            <asp:BoundField DataField="roomId" HeaderText="Room Id" SortExpression="roomId" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="dsAddPayRent" runat="server" ConnectionString="<%$ ConnectionStrings:HouseRentDBConText %>" DeleteCommand="DELETE FROM [RentPay] WHERE [rentPayId] = @rentPayId" InsertCommand="INSERT INTO [RentPay] ([monthName], [PaidAmount], [paydate], [memberId], [roomId]) VALUES (@monthName, @PaidAmount, @paydate, @memberId, @roomId)" SelectCommand="SELECT * FROM [RentPay]" UpdateCommand="UPDATE [RentPay] SET [monthName] = @monthName, [PaidAmount] = @PaidAmount, [paydate] = @paydate, [memberId] = @memberId, [roomId] = @roomId WHERE [rentPayId] = @rentPayId">
                        <DeleteParameters>
                            <asp:Parameter Name="rentPayId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="monthName" Type="String" />
                            <asp:Parameter Name="PaidAmount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="paydate" />
                            <asp:Parameter Name="memberId" Type="Int32" />
                            <asp:Parameter Name="roomId" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="monthName" Type="String" />
                            <asp:Parameter Name="PaidAmount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="paydate" />
                            <asp:Parameter Name="memberId" Type="Int32" />
                            <asp:Parameter Name="roomId" Type="Int32" />
                            <asp:Parameter Name="rentPayId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

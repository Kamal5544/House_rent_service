<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RentPayDetails.aspx.cs" Inherits="House_Rent_Service.RentPayDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <h3>Details</h3>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="rentPayId" DataSourceID="dsRentPayDetails">

                        <Columns>
                            <asp:BoundField DataField="rentPayId" HeaderText="rentPayId" InsertVisible="False" ReadOnly="True" SortExpression="rentPayId" />
                            <asp:BoundField DataField="monthName" HeaderText="monthName" SortExpression="monthName" />
                            <asp:BoundField DataField="PaidAmount" HeaderText="PaidAmount" SortExpression="PaidAmount" />
                            <asp:BoundField DataField="paydate" HeaderText="paydate" SortExpression="paydate" />
                            <asp:BoundField DataField="memberId" HeaderText="memberId" SortExpression="memberId" />
                            <asp:BoundField DataField="roomId" HeaderText="roomId" SortExpression="roomId" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="dsRentPayDetails" runat="server" ConnectionString="<%$ ConnectionStrings:HouseRentDBConText %>" DeleteCommand="DELETE FROM [RentPay] WHERE [rentPayId] = @rentPayId" InsertCommand="INSERT INTO [RentPay] ([monthName], [PaidAmount], [paydate], [memberId], [roomId]) VALUES (@monthName, @PaidAmount, @paydate, @memberId, @roomId)" SelectCommand="SELECT * FROM [RentPay]" UpdateCommand="UPDATE [RentPay] SET [monthName] = @monthName, [PaidAmount] = @PaidAmount, [paydate] = @paydate, [memberId] = @memberId, [roomId] = @roomId WHERE [rentPayId] = @rentPayId">
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

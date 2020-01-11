<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="House_Rent_Service.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <h3>Member</h3>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MemberId" DataSourceID="dsMember">

                        <Columns>
                            <asp:BoundField DataField="MemberId" HeaderText="Member Id" InsertVisible="False" ReadOnly="True" SortExpression="MemberId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" SortExpression="MobileNo" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="dsMember" runat="server" ConnectionString="<%$ ConnectionStrings:HouseRentDBConText %>" DeleteCommand="DELETE FROM [Member] WHERE [MemberId] = @MemberId" InsertCommand="INSERT INTO [Member] ([Name], [Address], [MobileNo], [Email], [Picture]) VALUES (@Name, @Address, @MobileNo, @Email, @Picture)" SelectCommand="SELECT * FROM [Member]" UpdateCommand="UPDATE [Member] SET [Name] = @Name, [Address] = @Address, [MobileNo] = @MobileNo, [Email] = @Email, [Picture] = @Picture WHERE [MemberId] = @MemberId">
                        <DeleteParameters>
                            <asp:Parameter Name="MemberId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Picture" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Picture" Type="String" />
                            <asp:Parameter Name="MemberId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

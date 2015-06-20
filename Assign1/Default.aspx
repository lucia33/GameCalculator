<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assign1.Default" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Welcome to THE GAME CALCULATOR</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1>THE GAME CALCULATOR</h1>
            <p>This is a game calculator. It summarizes the results of 4 individual games.</p>
        </div>
    </div>

    <!-- calculator container -->
    <div class="container">

        <!-- columns of results of 4 games -->

        <!-- game 1 -->
        <div class="col-md-3">
            <h2>Game 1</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result1" runat="server" required ValidationGroup="vd">
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>
            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="Please choose one result" controltovalidate="result1" display="Dynamic" validationgroup="vd">*</asp:requiredfieldvalidator>
            <br />

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsScored1" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="PointsScored1" display="Dynamic" errormessage="Please enter a number" validationgroup="vd">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator1" runat="server" controltovalidate="PointsScored1" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsAllowed1" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="PointsAllowed1" errormessage="Please enter a number" validationgroup="vd" Display="Dynamic">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator2" runat="server" controltovalidate="PointsAllowed1" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <asp:comparevalidator id="CompareValidator1" runat="server" controltocompare="PointsAllowed1" controltovalidate="PointsScored1" errormessage="Points scored and points allowed cannot be the same" validationgroup="vd" display="Dynamic" Operator="NotEqual">Cannot be the same</asp:comparevalidator>
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <asp:textbox runat="server" id="spectators1" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" errormessage="RequiredFieldValidator" validationgroup="vd" controltovalidate="spectators1" Display="Dynamic">*</asp:requiredfieldvalidator>
            <br />

        </div>
        <!-- end of game 1 -->

                <!-- game 2 -->
        <div class="col-md-3">
            <h2>Game 2</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result2" runat="server" required ValidationGroup="vd">
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>
            <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" errormessage="Please choose one result" controltovalidate="result2" display="Dynamic" validationgroup="vd">*</asp:requiredfieldvalidator>
            <br />

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsScored2" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="PointsScored2" display="Dynamic" errormessage="Please enter a number" validationgroup="vd">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator3" runat="server" controltovalidate="PointsScored2" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsAllowed2" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="PointsAllowed2" errormessage="Please enter a number" validationgroup="vd" Display="Dynamic">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator4" runat="server" controltovalidate="PointsAllowed2" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <asp:comparevalidator id="CompareValidator2" runat="server" controltocompare="PointsAllowed2" controltovalidate="PointsScored2" errormessage="Points scored and points allowed cannot be the same" validationgroup="vd" display="Dynamic" Operator="NotEqual">Cannot be the same</asp:comparevalidator>
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <asp:textbox runat="server" id="spectators2" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" errormessage="RequiredFieldValidator" validationgroup="vd" controltovalidate="spectators2" Display="Dynamic">*</asp:requiredfieldvalidator>
            <br />

        </div>
        <!-- end of game 2 -->

        <!-- game 3 -->
        <div class="col-md-3">
            <h2>Game 3</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result3" runat="server" required ValidationGroup="vd">
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>
            <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" errormessage="Please choose one result" controltovalidate="result3" display="Dynamic" validationgroup="vd">*</asp:requiredfieldvalidator>
            <br />

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsScored3" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" controltovalidate="PointsScored3" display="Dynamic" errormessage="Please enter a number" validationgroup="vd">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator5" runat="server" controltovalidate="PointsScored3" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsAllowed3" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" controltovalidate="PointsAllowed3" errormessage="Please enter a number" validationgroup="vd" Display="Dynamic">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator6" runat="server" controltovalidate="PointsAllowed3" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <asp:comparevalidator id="CompareValidator3" runat="server" controltocompare="PointsAllowed3" controltovalidate="PointsScored3" errormessage="Points scored and points allowed cannot be the same" validationgroup="vd" display="Dynamic" Operator="NotEqual">Cannot be the same</asp:comparevalidator>
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <asp:textbox runat="server" id="spectators3" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" errormessage="RequiredFieldValidator" validationgroup="vd" controltovalidate="spectators3" Display="Dynamic">*</asp:requiredfieldvalidator>
            <br />

        </div>
        <!-- end of game 3 -->

         <!-- game 4 -->
        <div class="col-md-3">
            <h2>Game 4</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result4" runat="server" required ValidationGroup="vd">
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>
            <asp:requiredfieldvalidator id="RequiredFieldValidator13" runat="server" errormessage="Please choose one result" controltovalidate="result4" display="Dynamic" validationgroup="vd">*</asp:requiredfieldvalidator>
            <br />

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsScored4" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator14" runat="server" controltovalidate="PointsScored4" display="Dynamic" errormessage="Please enter a number" validationgroup="vd">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator7" runat="server" controltovalidate="PointsScored4" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <asp:textbox runat="server" id="PointsAllowed4" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator15" runat="server" controltovalidate="PointsAllowed4" errormessage="Please enter a number" validationgroup="vd" Display="Dynamic">*</asp:requiredfieldvalidator>
            <asp:rangevalidator id="RangeValidator8" runat="server" controltovalidate="PointsAllowed4" display="Dynamic" errormessage="Please enter an integer above 0" minimumvalue="0" type="Integer" validationgroup="vd" MaximumValue="999">Please enter an integer above 0</asp:rangevalidator>
            <asp:comparevalidator id="CompareValidator4" runat="server" controltocompare="PointsAllowed4" controltovalidate="PointsScored4" errormessage="Points scored and points allowed cannot be the same" validationgroup="vd" display="Dynamic" Operator="NotEqual">Cannot be the same</asp:comparevalidator>
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <asp:textbox runat="server" id="spectators4" ValidationGroup="vd"></asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator16" runat="server" errormessage="RequiredFieldValidator" validationgroup="vd" controltovalidate="spectators4" Display="Dynamic">*</asp:requiredfieldvalidator>
            <br />

        </div>
        <!-- end of game 4 -->
        

    </div>
    <!-- end of calculator container -->

    <p>
        <asp:button id="summary" runat="server" text="Summary" onclick="summary_Click" />
    </p>

    <!-- Show Summary -->
    <div>
        <asp:label runat="server" id="winNum"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="loseNum"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="winPercent"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="ttlPtsScored"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="ttlPtsAllowed"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="ptsDifferential"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="ttlSpectators"></asp:label>
    </div>
    <div>
        <asp:label runat="server" id="avgSpectators"></asp:label>
    </div>

    <br />

    <hr>
</asp:Content>


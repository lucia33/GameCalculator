<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assign1.Default" %>

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
            <asp:radiobuttonlist id="result1" runat="server" required>
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <input id="pointsScored1" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <input id="PointsAllowed1" type="number" min="0" runat="server" required />
            <br />



            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <input id="spectators1" type="number" min="0" runat="server" required />
            <br />

        </div>
        <!-- end of game 1 -->

        <!-- game 2 -->
        <div class="col-md-3">
            <h2>Game 2</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result2" runat="server" required>
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <input id="pointsScored2" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <input id="PointsAllowed2" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <input id="spectators2" type="number" min="0" runat="server" required />
            <br />

        </div>
        <!-- end of game 2 -->

        <!-- game 3 -->
        <div class="col-md-3">
            <h2>Game 3</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result3" runat="server" required>
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <input id="pointsScored3" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <input id="PointsAllowed3" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <input id="spectators3" type="number" min="0" runat="server" required />
            <br />

        </div>
        <!-- end of game 3 -->

        <!-- game 4 -->
        <div class="col-md-3">
            <h2>Game 4</h2>

            <asp:label runat="server" text="Result"></asp:label>
            <asp:radiobuttonlist id="result4" runat="server" required>
                <asp:ListItem>Win</asp:ListItem>
                <asp:ListItem>Lose</asp:ListItem>
            </asp:radiobuttonlist>

            <asp:label runat="server" text="Points Scored"></asp:label>
            <br />
            <input id="pointsScored4" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Points Allowed"></asp:label>
            <br />
            <input id="PointsAllowed4" type="number" min="0" runat="server" required />
            <br />

            <asp:label runat="server" text="Spectators"></asp:label>
            <br />
            <input id="spectators4" type="number" min="0" runat="server" required />
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


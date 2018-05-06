<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinancialCalculators.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link href="Content/fontawesome.css" rel="stylesheet" />
    <link href="Content/fontawesome-all.css" rel="stylesheet" />
    <link href="FC.css" rel="stylesheet" />
    <title>The Number Cruncher</title>
    
    <style type="text/css">
        .auto-style1 {
            font-size: 12px;
            color: #000000;
        }
        .auto-style2 {
            font-size: 12px;
            color: #00CCFF;
        }
    </style>
    
</head>
<body>


    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    <div class="jumbotron jumbotron-fluid p-3 mb-2 bg-secondary text-white finCalHead">
        <div class="container">
            <p><i class="fab fa-optin-monster fa-lg"></i> The Number Cruncher</p>
            
        </div>
    </div>
        <!-- BUTTONS -->
        
        <br />
        
        
        <div class="buttons1">
        
            <div class="finCalHead text-warning"><i class="far fa-money-bill-alt"></i>&nbsp</div>
            
        <button type="button" class="btn btn-warning text-white btnTxt" data-toggle="modal" data-target="#modal1">APR vs APY</button>
        <button type="button" class="btn btn-info btnTxt" data-toggle="modal" data-target="#modal2">Loan Comparison</button>
            <div class="finCalHead text-info">&nbsp<i class="fas fa-balance-scale"></i></div>
        
        </div>
        
        <div class="buttons1">
        
            <div class="finCalHead text-success"><i class="fas fa-sliders-h"></i>&nbsp</div>
        <button type="button" class="btn btn-success btnTxt" data-toggle="modal" data-target="#modal3">CD Early Withdrawal</button>
            
        <button type="button" class="btn btn-danger btnTxt" data-toggle="modal" data-target="#modal4">Principal Payment</button>
            <div class="finCalHead text-danger">&nbsp<i class="fas fa-home"></i></div>
            
        
        </div>
       
        <br />
        
        <!-- MODAL 1 -->
        <div class="modal fade bd-example-modal-lg" id ="modal1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header p-3 mb-2 bg-warning">
                        <h5 class="modal-title">Borrow vs. Invest</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                        <table class="table table-light table">
                            <thead class="thead-light">
                                <tr>
                                    <th class="colHead">Loan Cost</th>
                                    <th class="colHead">Return on Deposit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                            </div>
                                            <asp:TextBox ID="textBoxLoanAmount" runat="server"  class="form-control rowHead" placeholder="Loan amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                            </div>
                                            <asp:TextBox ID="textBoxDepositAmount" runat="server"  class="form-control rowHead" placeholder="Deposit amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                            </div>
                                            
                                            <asp:TextBox ID="comboBoxLoanTerm" runat="server"  class="form-control rowHead" placeholder="Loan Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                            </div>
                                            <asp:TextBox ID="comboBoxDepositTerm" runat="server"  class="form-control rowHead" placeholder="Deposit Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                            </div>

                                            <asp:TextBox ID="textBoxAPR" runat="server"  class="form-control rowHead" placeholder="APR" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                            </div>
                                            <asp:TextBox ID="textBoxAPY" runat="server" class="form-control rowHead" placeholder="Interest Rate" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label2" class="labelRow" runat="server">Total Cost:</asp:Label> <asp:Label ID="costLabel" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label3" class="labelRow" runat="server">Total Gain:</asp:Label> <asp:Label ID="gainLabel" runat="server"></asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                        <div>
                            <asp:Label ID="suggestionLabel" class="suggestionLabel text-warning" runat="server" Visible="false"><i class="far fa-comment fa-lg"></i></asp:Label>
                            <asp:Label ID="tipLabel" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-warning modalBtn" text="fas fa-calculator" runat="server" onserverclick="resultsButton_Click">Crunch <i class="fas fa-calculator"></i></button>
                        <button class="btn btn-secondary modalBtn" runat="server" text="Reset" onserverclick="resetButton_Click">Erase <i class="fas fa-eraser"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <!-- MODAL 2 -->
        <div class="modal fade bd-example-modal-lg" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header p-3 mb-2 bg-info">
                        <h5 class="modal-title">Loan Comparison</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-light table">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="colHead">Loan 1</th>
                                        <th class="colHead">Loan 2</th>
                                        <th class="colHead">Loan 3</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxAmount1" runat="server"  class="form-control rowHead" placeholder="Amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxAmount2" runat="server"  class="form-control rowHead" placeholder="Amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxAmount3" runat="server"  class="form-control rowHead" placeholder="Amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>

                                                <asp:TextBox ID="comboBoxTerm1" runat="server"  class="form-control rowHead" placeholder="Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>

                                                <asp:TextBox ID="comboBoxTerm2" runat="server"  class="form-control rowHead" placeholder="Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>

                                                <asp:TextBox ID="comboBoxTerm3" runat="server"  class="form-control rowHead" placeholder="Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                </div>

                                                <asp:TextBox ID="textBoxAPR1" runat="server"  class="form-control rowHead" placeholder="APR" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxAPR2" runat="server"  class="form-control rowHead" placeholder="APR" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxAPR3" runat="server"  class="form-control rowHead" placeholder="APR" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        
                                        <td>
                                            <div>
                                                <asp:Label ID="Label12" class="labelRow text-info" runat="server"><b>Monthly Payment:</b></asp:Label>
                                                
                                            </div>
                                        <div class="labelRowLoan">
                                           
                                            <asp:Label ID="labelMonthlyPayment1" runat="server"></asp:Label>
                                            </div>
                                        <div>
                                        </div>
                                            <br />
                                            <div>
                                                <asp:Label ID="Label11" class="labelRow text-info" runat="server"><b>Total Loan Cost:</b></asp:Label>
                                            </div>
                                            <div class="labelRowLoan">

                                                <asp:Label ID="labelLoanCost1" runat="server"></asp:Label>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <asp:Label ID="Label1" class="labelRow text-white" runat="server">-</asp:Label>

                                            </div>
                                            <div class="labelRowLoan">
                                                
                                                <asp:Label ID="labelMonthlyPayment2" runat="server"></asp:Label>
                                            </div>
                                            <br />
                                            <div>
                                                <asp:Label ID="Label13" class="labelRow text-white" runat="server">-</asp:Label>
                                            </div>
                                            <div class="labelRowLoan">

                                                <asp:Label ID="labelLoanCost2" runat="server"></asp:Label>
                                            </div>

                                        </td>
                                        <td>
                                            <div>
                                                <asp:Label ID="Label10" class="labelRow text-white" runat="server">-</asp:Label>

                                            </div>
                                        <div class="labelRowLoan">
                                           
                                            <asp:Label ID="labelMonthlyPayment3" runat="server"></asp:Label>
                                        </div>
                                            <br />
                                            <div>
                                                <asp:Label ID="Label14" class="labelRow text-white" runat="server">-</asp:Label>
                                            </div>
                                            <div class="labelRowLoan">

                                            <asp:Label ID="labelLoanCost3" runat="server"></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                    </div>
                    <div class="modal-footer">
                        <button class="btn bg-info modalBtn" text="fas fa-calculator" runat="server" onserverclick="seeResultsButton1_Click">Crunch <i class="fas fa-calculator"></i></button>
                        <button class="btn btn-secondary modalBtn" runat="server" text="Reset" onserverclick="resetButton1_Click">Erase <i class="fas fa-eraser"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        

        
        <!-- MODAL 3 -->
        
        <div class="modal fade bd-example-modal-lg" id="modal3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header p-3 mb-2 bg-success text-white">
                        <h5 class="modal-title">CD Early Withdrawal</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-light table">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="colHead">Existing Certificate</th>
                                        <th class="colHead">New Certificate</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxInitialDepositAmount" runat="server"  class="form-control rowHead" placeholder="Deposit amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>

                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                                </div>

                                                <asp:TextBox ID="textBoxInitialTerm" runat="server"  class="form-control rowHead" placeholder="Initial Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>

                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                </div>

                                                <asp:TextBox ID="textBoxAPY1" runat="server"  class="form-control rowHead" placeholder="Interest Rate" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                                                <ContentTemplate>
                                                    
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                        </div>
                                                        <asp:TextBox ID="dateTimePickerContractDate" runat="server"  Style="background-color: white;" class="form-control rowHead" Text="" placeholder="Contract Date" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                                    </div>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="dateTimePickerContractDate" />

                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">

                                                            <asp:Image ID="imgDown" runat="server" ImageUrl="~/img/down1.png" />
                                                        </div>
                                                        <asp:TextBox ID="numericUpDownPenalty" runat="server" Style="background-color: white;" class="form-control rowHead" onkeydown="return (event.keyCode!=13);" Text=""></asp:TextBox>
                                                        <asp:Image ID="imgUp" runat="server" ImageUrl="~/img/up1.png" />
                                                    </div>
                                                    <ajaxToolkit:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                                                        TargetControlID="numericUpDownPenalty"
                                                        RefValues="Penalty(months);1;2;3;4;5;6;7;8;9"
                                                        TargetButtonUpID="imgUp"
                                                        TargetButtonDownID="imgDown" />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxNewDepositAmount"  runat="server" class="form-control rowHead" placeholder="Deposit amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxNewTerm" runat="server"  class="form-control rowHead" placeholder="Deposit Term(mm)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                </div>
                                                <asp:TextBox ID="textBoxNewAPY" runat="server"  class="form-control rowHead" placeholder="Interest Rate" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                            <asp:CheckBox ID="includePenaltyCheckBox" onkeydown="return (event.keyCode!=13);"  class="labelRow" runat="server" />
                                                    </div>
                                                </div>
                                                <asp:TextBox ID="textBoxCurrentGainPlusPenalty" runat="server" class="form-control rowHead" onkeydown="return (event.keyCode!=13);" placeholder="Incl. Current gain + Penalty" ReadOnly="true" Style="background-color: white"></asp:TextBox>
                                                
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                       
                                        <td>
                                            <div>
                                            <asp:Label ID="Label4" class="labelRow" runat="server">Total gain at maturity:</asp:Label>
                                            <asp:Label ID="labelPotentialGain" runat="server"></asp:Label>
                                            </div>
                                            <div>
                                            <asp:Label ID="Label5" class="labelRow" runat="server">Early withdrawal penalty:</asp:Label>
                                            <asp:Label ID="earlyWithdrawalLabel" runat="server"></asp:Label>
                                            <div>
                                            </div>
                                            <div>
                                            </div>
                                            <asp:Label ID="Label8" class="labelRow" runat="server">Current gain + Penalty:</asp:Label>
                                            <asp:Label ID="totalPenaltyLabel" runat="server"></asp:Label>
                                            <div>
                                            </div>
                                        </td>
                                            
                                        <td>
                                            <div>
                                            <asp:Label ID="Label6" class="labelRow" runat="server">Total Gain at maturity:</asp:Label>
                                            <asp:Label ID="labelNewGain" runat="server"></asp:Label>
                                            </div>
                                            <div>
                                            <asp:Label ID="Label9" class="labelRow" runat="server">No. of months to recuperate penalty:</asp:Label>
                                            <asp:Label ID="labelNumberOfTerms" runat="server"></asp:Label>
                                            </div>
                                            
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn bg-success modalBtn" text="fas fa-calculator" runat="server" onserverclick="resultsButton1_Click">Crunch <i class="fas fa-calculator"></i></button>
                        <button class="btn btn-secondary modalBtn" runat="server" text="Reset" onserverclick="resetButton2_Click">Erase <i class="fas fa-eraser"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <!-- MODAL 4 -->
        <div class="modal fade bd-example-modal-lg" id="modal4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header p-3 mb-2 bg-danger text-white">
                        <h5 class="modal-title">Principal Payment</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-body">
                            <div class="table-responsive">
                                <table class="table table-light table">
                                    <thead class="thead-light">
                                        <tr>
                                            <th class="colHead">Additional Principal Payment</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                    </div>
                                                    <asp:TextBox ID="textBoxOriginalLoanBalance" runat="server"  class="form-control rowHead" placeholder="Original Loan Amount" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                                </div>

                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                    </div>
                                                    <asp:TextBox ID="textBoxOriginalAPR" runat="server"  class="form-control rowHead" placeholder="Annual Percentage Rate" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                                </div>

                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                    </div>

                                                    <asp:TextBox ID="textBoxOriginalTerm" runat="server"  class="form-control rowHead" placeholder="Initial Term(months)" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                                </div>

                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">

                                                    <ContentTemplate>
                                                        <div class="rowHead text-muted">Number of payments made:</div>
                                                        <div class="input-group mb-3">
                                                            <div class="input-group-prepend">
                                                                <asp:Image ID="imgsDown" runat="server" ImageUrl="~/img/down1.png" />
                                                            </div>
                                                            <asp:TextBox ID="numericUpDownPaymentMade" runat="server"  Style="background-color: white;" class="form-control rowHead" onkeydown="return (event.keyCode!=13);" Text="1"></asp:TextBox>
                                                            <asp:Image ID="imgsUp" runat="server" ImageUrl="~/img/up1.png" />
                                                        </div>
                                                        <ajaxToolkit:NumericUpDownExtender ID="NumericUpDownExtender2" runat="server"
                                                            TargetControlID="numericUpDownPaymentMade"
                                                            TargetButtonUpID="imgsUp"
                                                            TargetButtonDownID="imgsDown" Maximum="1000" Minimum="0" />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>

                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                    </div>

                                                    <asp:TextBox ID="textBoxAdditionalPayment" runat="server"  class="form-control rowHead" placeholder="Additional principal payment per month" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                                </div>

                                            </td>
                                            
                                        </tr>

                                        <tr>

                                            <td>
                                                <asp:Label ID="suggestionLabel1" class="suggestionLabel text-danger" runat="server" Visible="false"><i class="far fa-comment fa-lg"></i></asp:Label>
                                                <asp:Label ID="labelSaveInterest" class="labelRow" runat="server"></asp:Label>
                                                </td>
                                            
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                        <div class="modal-footer">
                            
                            <button class="btn bg-danger modalBtn" text="fas fa-calculator" runat="server" onserverclick="crunchButton_Click">Crunch <i class="fas fa-calculator"></i></button>
                            
                            <button class="btn btn-secondary modalBtn" runat="server" text="Reset" onserverclick="eraseButton_Click">Erase <i class="fas fa-eraser"></i></button>
                        </div>
                </div>
            </div>
        </div>
        </div>




        <div class="footer">
            <p> <span class="auto-style1"><strong>Coded with <i class="fas fa-heartbeat"></i> by
                </strong>
                </span><span class="auto-style2"><strong>[</strong></span><span class="auto-style1"><strong>Daler</strong></span><span class="auto-style2"><strong>]Rakhmet-Zade</strong></span> </p>
        </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type="text/javascript">
           function openModal1() {
               $('#modal1').modal('show');
           }
        </script>

        <script type="text/javascript">
           function openModal2() {
               $('#modal2').modal('show');
           }
        </script>
        <script type="text/javascript">
           function openModal3() {
               $('#modal3').modal('show');
           }
        </script>
        <script type="text/javascript">
           function openModal4() {
               $('#modal4').modal('show');
           }
        </script>
    </form>
    </body>
</html>

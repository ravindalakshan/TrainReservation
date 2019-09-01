<jsp:include page="template/header.jsp" />
	<header class="navigater-ble" id="">
		<div class="container-fluid">
			<div class="row mobitel_hl"></div>
			<div class="row">
				<div class="col-md-12 row">
					<!-- <div class="col-md-1"></div> -->
					<div class="col-md-2 step-ble comleted-ble"><a href="/">Home</a> <i class="fas fa-check-circle"></i><span><i
								class="fas fa-chevron-right"></i></span>
					</div>
					<div class="col-md-2 step-ble comleted-ble"><a href="dashboard">Check Availability</a> <i class="fas fa-check-circle"></i>
						<span><i class="fas fa-chevron-right"></i></span>
					</div>
					<div class="col-md-2 step-ble comleted-ble">Seat Plan <i class="fas fa-check-circle"></i> <span><i
								class="fas fa-chevron-right"></i></span></div>
        			<div class="col-md-2 step-ble comleted-ble">Payment <i class="fas fa-check-circle"></i><span><i class="fas fa-chevron-right"></i></span></div>
					<div class="col-md-2 step-ble ongoing-ble">Resavation<span><i
								class="fas fa-chevron-right"></i></span></div>
					<div class="col-md-2 step-ble">Summary</div>
					<!-- <div class="col-md-1"></div> -->
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 mx-auto">
				<div class="summary-ble">
					<div class="header col-md-12">Booking Summary (One Way)</div>
					<div class="sec1 col">Compartment - SRC
						<span id="selectedOneWaySeatCount"></span> Seats x Rs: <span
						id="oneWaySeatPrice"></span>
						<!-- <span>3 Seats x Rs: 1200</span> -->
					</div>
					<div class="sec2 col">GRAND TOTAL : <span id="oneWayTotalPrice"></span></div>
				</div>

				<div id="divReservationOneWay " class="one-way-middle-panel">
					<div class=" mx-auto">
						<div class="table-title">
							<div class="form-group">
								<label for="exampleInputEmail1"><i class="fas fa-subway"></i> Oneway Trains </label>
								<div class="table-title-route">
									<span id="departure"></span>
									<span><i class="fas fa-chevron-right"></i></span>
									<span id="destination"></span>
									<span><img src="images/table/train-3.svg" height="30" /></span>
								</div>
								<h1 class="lead">Oneway Trains</h1>
							</div>
						</div>
						<div class="data-table-ble-oneway">
							<form method="post" id="formRes">
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="seatNoOneWay">Seat No</label>
										<input type="text" disabled class="form-control form-control-sm "
											id="seatNoOneWay" placeholder="Seat No">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="emailAddOneWay">E-mail Address</label>
										<input type="text" class="form-control form-control-sm " id="emailAddOneWay"
											placeholder="Email Address">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="contactNoOneWay">Contact Number</label>
										<input type="text" class="form-control form-control-sm " id="contactNoOneWay"
											placeholder="Contact Number">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="idNoOneWay">Identification
											No(Passport/NIC)</label>
										<input type="text" class="form-control form-control-sm " id="idNoOneWay"
											placeholder="Identification Number">
									</div>
								</div>

							</form>
							<table id="onewauReservationDetails" class="display table table onewayTb reservation-table"
								cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Seat No</th>
										<th>Identification No</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>


						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6" id="divReservationReturn">

				<div class="summary-ble">
					<div class="header col-md-12">Booking Summary (Return Way)</div>
					<div class="sec1 col">Compartment - SRC
						<span id="selectedReturnWaySeatCount"></span> Seats x Rs: <span
									id="returnWaySeatPrice"></span> 
						<!-- <span>3 Seats x Rs: 1200</span> -->
					</div>
					<div class="sec2 col">GRAND TOTAL : <span id="returnWayTotalPrice"></span></div>
				</div>


				<div class="return-way-middle-panel">
					<div class=" mx-auto">
						<div class="table-title">
							<div class="form-group">
								<label for="exampleInputEmail1"><i class="fas fa-subway"></i> Resavation Return Trains
								</label>
								<div class="table-title-route">
									<span id="destination1"></span>
									<span><i class="fas fa-chevron-right"></i></span>
									<span id="departure1"></span>
									<span><img src="images/table/train-3.svg" height="30" /></span>
								</div>
								<h1 class="lead">Return Trains</h1>
							</div>
						</div>
						<div class="data-table-ble-oneway">
							<form method="post" id="formRes">
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="seatReturn">Seat No</label>
										<input type="text" disabled class="form-control form-control-sm "
											id="seatReturn" placeholder="Seat No">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="emailAddReturn">E-mail Address</label>
										<input type="text" class="form-control form-control-sm " id="emailAddReturn"
											placeholder="Email Address">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="contactNoReturn">Contact Number</label>
										<input type="text" class="form-control form-control-sm " id="contactNoReturn"
											placeholder="Contact Number">
									</div>
								</div>
								<div class="form-row">
									<div class="col-md-12">
										<label class="col-md-12 label-land" for="idNoReturn">Identification
											No(Passport/NIC)</label>
										<input type="text" class="form-control form-control-sm " id="idNoReturn"
											placeholder="Identification Number">
									</div>
								</div>
							</form>
						</div>
						<table id="returnReservationDetails" class="display table table returnTb reservation-table"
							cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>Seat No</th>
									<th>Identification No</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3"></div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6  ">
				<div class="summary-panel">
					<div class="right-header">
						<h4>BOOKING SUMMARY </h4>
					</div>
					<table class="cus-tab">
						<tr>
							<th class="cus-th"> Compartment - SRC</th>
							<th class="cus-th"><span id="selectedOneWaySeatCount"></span> Seats x Rs: <span
									id="oneWaySeatPrice"></span> </th>
						</tr>
					</table>
					<table class="cus-tab">
						<tr>
							<th class="cus-th">GRAND TOTAL : <span id="oneWayTotalPrice"></span></th>
						</tr>
					</table>

				</div>

				<div id="divReservationOneWay " class="one-way-middle-panel">
					<div class=" mx-auto">
						<div class="table-title">
							<div class="form-group">
								<label for="exampleInputEmail1"><i class="fas fa-subway"></i>Oneway Trains </label>
								<div class="table-title-route">
									<span id="departure"></span>
									<span><i class="fas fa-chevron-right"></i></span>
									<span id="destination"></span>
									<span><img src="images/table/train-3.svg" height="30" /></span>
								</div>
								<h1 class="lead">Oneway Trains</h1>
							</div>
						</div>
						<div class="data-table-ble-oneway">
							<form method="post" id="formRes">
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="seatNoOneWay">Seat No</label>
										<input type="text" disabled class="form-control form-control-sm "
											id="seatNoOneWay" placeholder="Seat No">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="emailAddOneWay">E-mail Address</label>
										<input type="text" class="form-control form-control-sm " id="emailAddOneWay"
											placeholder="Email Address">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="contactNoOneWay">Contact Number</label>
										<input type="text" class="form-control form-control-sm " id="contactNoOneWay"
											placeholder="Contact Number">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="idNoOneWay">Identification
											No(Passport/NIC)</label>
										<input type="text" class="form-control form-control-sm " id="idNoOneWay"
											placeholder="Identification Number">
									</div>
								</div>

							</form>
							<table id="onewauReservationDetails" class="display table table onewayTb" cellspacing="0"
								width="100%">
								<thead>
									<tr>
										<th>Seat No</th>
										<th>Identification No</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>


						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3"></div>
		</div>
	</div> -->



	<!---- RETURN TRAIN  ----------->
	<!-- <div class="container" id="divReservationReturn">
		<div class="row">
			<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 ">
				<div class="summary-panel">
					<div class="right-header">
						<h4>BOOKING SUMMARY </h4>
					</div>
					<table class="cus-tab">
						<tr>
							<th class="cus-th"> Compartment - SRC</th>
							<th class="cus-th"><span id="selectedReturnWaySeatCount"></span> Seats x Rs: <span
									id="returnWaySeatPrice"></span> </th>
						</tr>
					</table>
					<table class="cus-tab">
						<tr>
							<th class="cus-th">GRAND TOTAL : <span id="returnWayTotalPrice"></span></th>
						</tr>
					</table>

				</div>


				<div class="return-way-middle-panel">
					<div class=" mx-auto">
						<div class="table-title">
							<div class="form-group">
								<label for="exampleInputEmail1"><i class="fas fa-subway"></i>Resavation Return Trains
								</label>
								<div class="table-title-route">
									<span id="destination1"></span>
									<span><i class="fas fa-chevron-right"></i></span>
									<span id="departure1"></span>
									<span><img src="images/table/train-3.svg" height="30" /></span>
								</div>
								<h1 class="lead">Return Trains</h1>
							</div>
						</div>
						<div class="data-table-ble-oneway">
							<form method="post" id="formRes">
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="seatReturn">Seat No</label>
										<input type="text" disabled class="form-control form-control-sm "
											id="seatReturn" placeholder="Seat No">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="emailAddReturn">E-mail Address</label>
										<input type="text" class="form-control form-control-sm " id="emailAddReturn"
											placeholder="Email Address">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="contactNoReturn">Contact Number</label>
										<input type="text" class="form-control form-control-sm " id="contactNoReturn"
											placeholder="Contact Number">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label class="col-md-12 label-land" for="idNoReturn">Identification
											No(Passport/NIC)</label>
										<input type="text" class="form-control form-control-sm " id="idNoReturn"
											placeholder="Identification Number">
									</div>
								</div>
							</form>
						</div>
						<table id="returnReservationDetails" class="display table table returnTb" cellspacing="0"
							width="100%">
							<thead>
								<tr>
									<th>Seat No</th>
									<th>Identification No</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
			</div>
		</div>
	</div> -->

<!-- 
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
			Launch demo modal
		  </button> -->
		  
		  <!-- Modal -->
		  <!-- <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-scrollable" role="document">
			  <div class="modal-content">
				<div class="modal-header">
				  <h5 class="modal-title" id="exampleModalScrollableTitle">Modal title</h5>
				  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<div class="modal-body">
				  ...
				</div>
				<div class="modal-footer">
				  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				  <button type="button" class="btn btn-primary">Save changes</button>
				</div>
			  </div>
			</div>
		  </div> -->



	<div class=" col-md-12">
		<form method="link" action="summary.html">
			<input type="hidden" id="sdeparture" name="departure">
			<input type="hidden" id="sdestination" name="destination">
			<input type="hidden" id="tdate" name="tdate">
			<input type="hidden" id="scount" name="scount">
			<input type="hidden" id="flag" name="flag">
			<input type="hidden" id="rdate" name="rdate">

			<input type="hidden" id="selectedSeatsOneWay" name="selectedSeatsOneWay" value="">
			<input type="hidden" id="selectedSeatsReturn" name="selectedSeatsReturn" value="">
			<input type="hidden" id="priceOneWay" name="priceOneWay" value="">
			<input type="hidden" id="priceReturn" name="priceReturn" value="">
			<div class="form-group custom-align">
				<input type="checkbox" name="termsAndCon" id="termsAndCon"> Terms And Conditions
			</div>
			<div class="form-group custom-align">

				<button type="submit" class="btn btn-primary btn-lg" id="proceed">Proceed To Checkout</button>
			</div>
		</form>
	</div>



	<FORM NAME="searchForm">
		<INPUT TYPE="hidden" NAME="search">
	</FORM>

	<!-- Bootstrap core JavaScript -->


	<!-- Custom JavaScript for this theme -->
	<script src="js/scrolling-nav.js"></script>

	<script>

		var returnSeatCount = 6;
		var oneWayseatCount = 6;
		var oneWayTotalPrice = 6000;
		var retrunWayTotalPrice = 7000;
		var returnWaySeatPrice = 1200;
		var oneWaySeatPrice = 1200;
		var departure;
		var destination;
		var tdate;
		var count;
		var flag;
		var rdate;
		var selectedSeatOneWay;
		var selectedSeatReturn;


		$(document).ready(function () {

			var locate = window.location + "&";
			document.searchForm.search.value = locate;
			var text = document.searchForm.search.value;
			function delineate(str) {
				theleft = str.indexOf("=") + 1;
				theright = str.indexOf("&");
				text = str.substring(theright + 1);

				return (str.substring(theleft, theright));
			}
			oneWaySeatPrice = delineate(text);
			departure = delineate(text);
			$("#sdeparture").val(departure);
			destination = delineate(text);
			$("#sdestination").val(destination);
			tdate = delineate(text);
			$("#tdate").val(tdate);
			count = delineate(text);
			$("#scount").val(count);
			flag = delineate(text);
			$("#flag").val(flag);
			rdate = delineate(text);
			$("#rdate").val(rdate);
			selectedSeatOneWay = delineate(text);
			selectedSeatReturn = delineate(text);
			readParam();
		});












		//added by sanuja
		var paramValOneWay = [], paramValReturn = [];
		function readParam() {
			//var query = window.location.search.substring(1);
			//var query = query.split('=');var childY,childN;
			//var para=[]; var priceReturn =0,priceOneWay =0;
			//para = query[1].split('&');
			paramValOneWay = selectedSeatOneWay.split('%2524');
			//para = query[2].split('&');
			paramValReturn = selectedSeatReturn.split('%2524');
			//para=  [];
			//para = query[3].split('&');
			//priceOneWay = para[0];
			//priceReturn = query[4];
			//var seatNoOneWay;
			if ((paramValOneWay.length > 0) && (paramValOneWay[0] != '')) {
				for (var i = 1; i < paramValOneWay.length - 1; i++) {
					seatNoOneWay = paramValOneWay + " ";
					markup = "<tr class='border_none'><br><td>Seat " + paramValOneWay[i] + " </td>" +
						"<td><input type='text' class='form-control col-md-10 form-control-sm' id='idNoReturn' placeholder='Identification No' ></td>" +
						"</tr>";
					$(".onewayTb tbody").append(markup);
				}
				$("#selectedSeatsOneWay").val(paramValOneWay.length - 1);
				$("#priceOneWay").val(priceOneWay);
				$("#divReservationOneWay").show();
				document.getElementById("departure").innerHTML = departure;
				document.getElementById("destination").innerHTML = destination;
				setSelectdOneWaySeatCount();
				setOneWayTotalPrice();
				setOneWaySeatPrice();
			} else {
				$("#divReservationOneWay").hide();
			}
			if ((paramValReturn.length > 0) && (paramValReturn[0] != '')) {
				for (var i = 1; i < paramValReturn.length - 1; i++) {
					seatReturn = paramValReturn + " ";
					markup = "<tr class='border_none'><br><td>Seat " + paramValReturn[i] + " </td><br>" +
						"<td><input type='text' class='form-control col-md-10 form-control-sm' id='idNoReturn' placeholder='Identification No' ></td>" +
						"</tr>";
					$(".returnTb  tbody").append(markup);
				}
				$("#selectedSeatsReturn").val(paramValReturn.length - 1);
				$("#divReservationReturn").show();
				$("#priceReturn").val(priceReturn);
				document.getElementById("departure1").innerHTML = departure;
				document.getElementById("destination1").innerHTML = destination;
				setSelectdReturnWaySeatCount();
				setReturnWayTotalPrice();
				setReturnWaySeatPrice();



			} else {
				$("#divReservationReturn").hide();
				setSelectdOneWaySeatCount();
				setOneWayTotalPrice();
				setOneWaySeatPrice();
			}
			$("#seatNoOneWay").val(selectedSeatOneWay.substring(0, selectedSeatOneWay.lastIndexOf("%")).split('%2524').toString());
			$("#seatReturn").val(selectedSeatReturn.substring(0, selectedSeatReturn.lastIndexOf("%")).split('%2524').toString());


			//console.log(paramValOneWay);
		}// document.getElementById("idNo").textContent= delineate(text);
		//alert( delineate(text));

		//readParam();//qs();
		$("#termsAndCon").change(function () {
			if ($(this).is(':checked')) {
				$('#proceed').removeAttr('disabled');
			} else {
				$('#proceed').attr('disabled', 'disabled');
			}
		});
		var mainNIC = '';
		var mainSelect = false;
		$("#passengerTyp").change(function () {
			var passengerTyp = $("#passengerTyp").val();
			if (passengerTyp == 'M') {
				$("#childN").prop("checked", true);
				$("#childY").attr("disabled", true);
				mainNIC = $("#idNo").val();
				mainSelect = true;
			} else {
				mainSelect = false;
				$("#idNo").val('');
				$("#childN").prop("checked", true);
				$("#childY").attr("disabled", false);
			}
		});
		$("#childY").change(function () {
			debugger;
			if (this.checked) {
				$("#idNo").val(mainNIC);
				$("#idNo").attr("disabled", true);
			}
		});
		$("#childN").change(function () {
			debugger;
			if (this.checked) {
				$("#idNo").val('');
				$("#idNo").attr("disabled", false);
			}
		});
		$("#proceed").click(function () {
			var seatReturn = $("#seatReturn").val();
			var seatNoOneWay = $("#seatNoOneWay").val();

			var emailAddOneWay = $("#emailAddOneWay").val();
			var contactNoOneWay = $("#contactNoOneWay").val()
			var idNoOneWay = $("#idNoOneWay").val();

			var emailAdd = $("#emailAddReturn").val();
			var contactNo = $("#contactNoReturn").val()
			var idNo = $("#idNoReturn").val();

			var valid = true;
			if (paramValOneWay.length > 0) {
				if (emailAddOneWay == '') {
					alert('Please add e-mail address');
					$('#emailAddOneWay').focus();
					valid = false;
				} else if (contactNoOneWay == '') {
					alert('Please add contact Number');
					$('#contactNoOneWay').focus();
					valid = false;
				} else if (idNoOneWay == '') {
					alert('Please select identification No');
					$('#idNoOneWay').focus();
					valid = false;
				}
			}
			if (valid) {
				if (paramValReturn.length > 0) {
					if (emailAddReturn == '') {
						alert('Please add e-mail address');
						$('#emailAddReturn').focus();
						valid = false;
					} else if (contactNoReturn == '') {
						alert('Please add contact Number');
						$('#contactNoReturn').focus();
						valid = false;
					} else if (idNoReturn == '') {
						alert('Please select identification No');
						$('#idNoReturn').focus();
						valid = false;
					}
				}
			}
			if (valid) {
				return true;
			} else {
				return false;
			}

		});
		$(".add-row").click(function () {
			var passengerTyp = $("#passengerTyp").val();
			var seatNo = $("#seatNo").val()
			var idNo = $("#idNo").val();
			var valid = true;
			if (passengerTyp == '') {
				alert('Please select passenger Type');
				$('#passengerTyp').focus();
				valid = false;
			} else if (seatNo == '') {
				alert('Please select seat No');
				$('#seatNo').focus();
				valid = false;
			} else if (idNo == '') {
				alert('Please select identification No');
				$('#idNo').focus();
				valid = false;
			}
			if (passengerTyp == 'M') {
				mainNIC = idNo;
			}
			if (valid) {

				addRow();
				if (mainSelect) {
					$('#passengerTyp').val('O');
					$("#idNo").val('');
					$("#seatNo").val('');
					$("#passengerTyp").attr("disabled", true);
					$("#childY").attr("disabled", false);
				}
			}
		});
		function addRow() {

			var passengerTyp = $("#passengerTyp option:selected").html();
			var seatNo = $("#seatNo option:selected").html()
			var idNo = $("#idNo").val();
			var childY, childN;
			if ($('#childY').is(":checked")) {
				childY = "checked";
			} else {
				childY = "";
			}
			if ($('#childN').is(":checked")) {
				childN = "checked";
			} else {
				childN = "";
			}
			//var markup = "<tr class='border_none'><td><input type='checkbox' name='record'></td>"+
			var markup = "<tr class='border_none'><td>" + passengerTyp + "</td>" +
				"<td><input type='radio' disabled id='childY' " + childY + "> Yes " +
				"<input type='radio' disabled id='childN' " + childN + "> No </td>" +
				"<td>" + seatNo + "</td><td>" + seatNo + "</td><td>" + idNo + "</td></tr>";
			$("table tbody").append(markup);
		}
		//end Added by Sanuja 


		function setSelectdOneWaySeatCount() {
			document.getElementById("selectedOneWaySeatCount").innerHTML = count;

		}

		function setOneWayTotalPrice() {
			document.getElementById("oneWayTotalPrice").innerHTML = oneWaySeatPrice * count;
		}

		function setSelectdReturnWaySeatCount() {
			document.getElementById("selectedReturnWaySeatCount").innerHTML = count;
		}

		function setReturnWayTotalPrice() {
			document.getElementById("returnWayTotalPrice").innerHTML = oneWaySeatPrice * count;
		}

		function setOneWaySeatPrice() {
			document.getElementById("oneWaySeatPrice").innerHTML = oneWaySeatPrice;

		}

		function setReturnWaySeatPrice() {
			document.getElementById("returnWaySeatPrice").innerHTML = oneWaySeatPrice;

		}

	</script>

<jsp:include page="template/footer.jsp" />
<jsp:include page="template/header.jsp" />

<!-- Navigation -->
<header class="navigater-ble" id="">
    <div class="container-fluid">
        <div class="row mobitel_hl"></div>
        <div class="row">
            <div class="col-md-12 row">
                <div class="col-md-1"></div>
                <div class="col-md-2 step-ble comleted-ble"><a href="/">Home</a> <i class="fas fa-check-circle"></i><span><i class="fas fa-chevron-right"></i></span>
                </div>
                <div class="col-md-2 step-ble ongoing-ble">Check Availability<span> <i
                            class="fas fa-chevron-right"></i></span> </div>
                <div class="col-md-2 step-ble ">Seat Plan<span> <i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Resavation<span> <i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Summary</div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
</header>

<div class="search-result-ble container-fluid">
    <div class="">
        <div class="col-md-12 back row" style="margin-right: 0; margin-left:0;">
            <p class="sr-p-ble">
                <div class="col-md-2"></div>
                <div class="col-md-6 details">
                    <span><span id="fromStation"></span> <i class="fas fa-chevron-right"></i> <span id="toStation"></span></span>
                    <span class="line"></span>
                    <span id="dateInfo"></span>
                    <span class="line"></span>
                    <span id="passengersCount"></span>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-primary btn-drop" type="button" data-toggle="collapse"
                        data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        Modify Search
                    </button>
                </div>
            </p>
        </div>

    </div>
    <div class="collapse" id="collapseExample">
        <div class="card card-body">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label class="col-md-12 label-land" for="fromSelect">From</label>
                                    <select class="form-control form-control-sm" id="fromSelect" value="${from}">
                                        <c:forEach items="${stations}" var="station">
                                            <option value="${station.stationID}">${station.stationName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="col-md-12 label-land" for="toSelect">To</label>
                                    <select class="form-control form-control-sm" id="toSelect" value="${to}">
                                        <c:forEach items="${stations}" var="station">
                                            <option value="${station.stationID}">${station.stationName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="col-md-12 label-land" for="dateInput">Date</label>
                                    <input type="text" class="form-control form-control-sm input-datapick-ble-land"
                                        id="dateInput" placeholder="Date" readonly="true" value="${date}">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-md-12 label-land" for="passengersCountInput">No of Pasengers</label>
                                        <input type="number" id="passengersCountInput"
                                            class="form-control form-control-sm col-md-6 float-left-ble"
                                            placeholder="Adults" value="${passengersCount}">
                                        <!-- <input type="number" id="child_ble"
                                            class="form-control form-control-sm col-md-6 float-left-ble"
                                            placeholder="Children"> -->
                                        <small id="emailHelp" class="form-text text-muted float-left-ble">You need
                                            to buy full ticket
                                            for all age 3+</small>
                                        <br>
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="col-md-12 label-land" for="adult_ble">Select Type</label>
                                    <div class="btn-group btn-group-toggle group-btn-ble" data-toggle="buttons">
                                        <label class="btn btn-primary active " id="oneway-ble">
                                            <input type="radio" name="options" id="option1" autocomplete="off"
                                                checked=""> One Way
                                        </label>
                                        <label class="btn btn-primary " id="return-ble">
                                            <input type="radio" name="options" id="option2" autocomplete="off">
                                            Return
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 return-date-ble" id="return-date-ble">
                                    <label class="col-md-12 label-land" for="returnDateInput">Return Date</label>
                                    <input type="text" id="returnDateInput" class="form-control form-control-sm  input-datapick-ble-land"
                                        placeholder="Return Date" readonly="true">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12 text-right" style="margin-top: 10px">
                                    <button type="submit" class="btn btn-primary">Search</button>
                                    <button type="submit" class="btn btn-primary">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>



<section id="landing1" class="table-oneway-ble bg-light">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="table-title">
                    <div class="form-group">
                        <label for="exampleInputEmail1"><i class="fas fa-subway"></i> One Way Trains </label>
                        <div class="table-title-route">
                            <span>Colombo</span>
                            <span><i class="fas fa-chevron-right"></i></span>
                            <span>Kandy</span>
                            <span><img src="images/table/train-3.svg" style="float: right" height="60"/></span>
                        </div>
                        <small id="emailHelp" class="form-text text-muted">You can change train times</small>
                    </div>
                </div>
                <div class="data-table-ble-oneway">
                    <table id="forwardTrainsTable" class="display table table" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Train</th>
                                <th>departs</th>
                                <th>Arrives</th>
                                <th>Class</th>
                                <th>Available</th>
                                <th>Price Rs.</th>
                                <th>Select Train</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- <c:forEach items="${trainRowForward}" var="train">
                                <tr class="border_none">
                                    <td>${train.name}<br> (${train.code})
                                        ${train.fromStation} - <br>${train.toStation} <br>
                                        ${train.sourceFromTime} - ${train.endToTime}
                                    </td>
                                    <td>${train.dTime}</td>
                                    <td>${train.aTime}</td>
                                    <td>${train.classCode}</td>
                                    <td>${train.available}</td>
                                    <td>${train.price}</td>
                                    <td>
                                        <form method="post" action="seatplan">
                                            <input type="submit" class="btn btn-default train_select_btn"
                                                style="width: 100%; margin-bottom: 4px;" value="Select" />
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>

                            <tr class="border_none">
                                <td>1029 Royal Saloon<br> (1111) Colombo Fort – <br>Kandy
                                    <br> 15:35 - 18:08
                                </td>
                                <td>7.30</td>
                                <td>18.08</td>
                                <td>BLR</td>
                                <td>32</td>
                                <td>1200.00</td>
                                <td>
                                    <form action="seatplan" method="post">
                                        <input type="hidden" value="${returnChecked}" name="returnChecked"
                                            id="returnChecked"> <input type="submit"
                                            class="btn btn-default train_select_btn"
                                            style="width: 100%; margin-bottom: 4px;" value="Select" />
                                    </form>
                                </td>
                            </tr> -->
                        </tbody>

                    </table>

                </div>
            </div>
        </div>
    </div>

</section>

<section id="landing2" class="table-return-ble">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="table-title">
                    <div class="form-group">
                        <label for="exampleInputEmail1"><i class="fas fa-subway"></i> Return Trains
                        </label>
                        <div class="table-title-route">
                            <span>Kandy</span>
                            <span><i class="fas fa-chevron-right"></i></span>
                            <span>Colombo</span>
                            <span><img src="images/table/train-3.svg" style="float: right; transform: rotateY(180deg)" height="60"/></span>
                        </div>
                        <small id="emailHelp" class="form-text text-muted">You can change train times</small>
                    </div>
                </div>
                <div class="data-table-ble-return">
                    <table id="returnTrainsTable" class="display table table" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Train Name</th>
                                <th>departs</th>
                                <th>Arrives</th>
                                <th>Class</th>
                                <th>Available</th>
                                <th>Price Rs.</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- <tr class="border_none">
                                <td>1009 Royal Saloon<br> (5555) Colombo Fort - <br>Kandy
                                    <br> 07:00 - 09:34
                                </td>
                                <td>7.00</td>
                                <td>21.34</td>
                                <td>BLR</td>
                                <td>16</td>
                                <td>1200.00</td>
                                <td>
                                    <form action="index.html" method="post">
                                        <input type="hidden" value="${returnChecked}" name="returnChecked"
                                            id="returnChecked">
                                        <input type="submit" class="btn btn-default train_select_btn"
                                            style="width: 100%; margin-bottom: 4px;" value="Select" />
                                    </form>
                                </td>
                            </tr>

                            <tr class="border_none">
                                <td>1029 Royal Saloon<br> (1111) Colombo Fort – <br>Kandy
                                    <br> 15:35 - 18:08
                                </td>
                                <td>7.30</td>
                                <td>18.08</td>
                                <td>BLR</td>
                                <td>32</td>
                                <td>1200.00</td>
                                <td>
                                    <form action="seatplan" method="post">
                                        <input type="hidden" value="${returnChecked}" name="returnChecked"
                                            id="returnChecked">
                                        <input type="submit" class="btn btn-default train_select_btn"
                                            style="width: 100%; margin-bottom: 4px;" value="Select" />
                                    </form>
                                </td>
                            </tr> -->

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</section>

<script>
    $('#forwardTrainsTable').DataTable({
        responsive: true,
        "bPaginate": false,
        "bLengthChange": false,
        "bFilter": false,
        "bInfo": false,
        "bAutoWidth": false,
        "bSearch": false
    });
    $('#returnTrainsTable').DataTable({
        responsive: true,
        "bPaginate": false,
        "bLengthChange": false,
        "bFilter": false,
        "bInfo": false,
        "bAutoWidth": false,
        "bSearch": true
    });
    $('.carousel').carousel({
        interval: 5000,
        pause: false
    })
    var today, datepicker;
    today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
    datepicker = $('#dateInput').datepicker({
        minDate: today,
        format: 'yyyy-dd-mm',
        header: true,
        footer: true,
        modal: true,
        autoclose: true
    });

    $("#returnDateInput").datepicker({
        format: 'yyyy-dd-mm',
        header: true,
        footer: true,
        modal: true,
        beforeShow:customRange,
        autoclose: true
    });

    function customRange() {
        // set minimum date range
        $("#returnDateInput").datepicker("option", "minDate", new Date($("#dateInput").datepicker("getDate")));
    };

    $('#oneway-ble').click(function () {
        $('#return-date-ble').hide();
        // $('.table-return-ble').hide();
    });
    $('#return-ble').click(function () {
        $('#return-date-ble').show();
        // $('.table-return-ble').show();
    });

    $(".collapse.show").each(function () {
        $(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
    });

    // Toggle plus minus icon on show hide of collapse element
    $(".collapse").on('show.bs.collapse', function () {
        $(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
    }).on('hide.bs.collapse', function () {
        $(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
    });

    var allStations;

    $(window).on('load', function() {
        $.get("https://apps.mobitel.lk/MTRWebWS/home", function(data) {
            allStations = data.obj;

            showJourneyInformation();
        })
        .fail(function() {
            // todo handle error
        })
    });

    function showJourneyInformation() {
        showStationInfo();

        showDateInfo();

        showPassengersInfo();

        showTrains();
    }

    function showStationInfo() {
        var fromStationId = $("#fromSelect").val();
        var toStationId = $("#toSelect").val();

        const fromStation = allStations.find(function(station) {
            return station.stationID === fromStationId;
        });

        const toStation = allStations.find(function(station) {
            return station.stationID === toStationId;
        })

        $("#fromStation").val(fromStation.stationName);
        $("#toStation").val(toStation.stationName);
    }

    function showDateInfo() {
        var dateInfo = $("#dateInput").val();

        if ($("#returnDateInput").val() !== '') {
            dateInfo.concat(" - ");
            dateInfo.concat($("#returnDateInput").val());
        }

        $("#dateInfo").val(dateInfo);
    }

    function showPassengersInfo() {
        $("#passengersCount").val($("#passengersCountInput").val());
    }

    function showTrains() {
        const forwardTrainsTable = document.getElementById("forwardTrainsTable");
        const returnTrainsTable = document.getElementById("returnTrainsTable");

        removeAllTableRows(forwardTrainsTable);
        removeAllTableRows(returnTrainsTable);

        const from = $("#fromSelect").val();
        const to = $("#toSelect").val();
        const date = $("#dateInput").val();
        const returnDate = $("#returnDateInput").val();
        const passengersCount = parseInt($("#passengersCountInput").val());

        const requestBody = {
            fromStCode: from,
            toStCode: to,
            departureDate: date,
            isReturn: false
        };
        if (returnDate !== '') {
            requestBody.isReturn = true;
            requestBody.returnDate = returnDate;
        }

        $.get("https://apps.mobitel.lk/MTRWebWS/home/trains", requestBody, function(data) {
            const forwardTrains = data.obj.forwardTrain;
            const returnTrains = data.obj.returnTrain;
            
            // <th>Train</th>
            // <th>departs</th>
            // <th>Arrives</th>
            // <th>Class</th>
            // <th>Available</th>
            // <th>Price Rs.</th>
            // <th>Select Train</th>

            // <th>Train Name</th>
            // <th>departs</th>
            // <th>Arrives</th>
            // <th>Class</th>
            // <th>Available</th>
            // <th>Price Rs.</th>

            forwardTrains.forEach(function(train) {
                train.classList.forEach(function(clazz) {
                    const row = forwardTrainsTable.insertRow(0);
                    const trainCell = row.insertCell(0);
                    const departTimeCell = row.insertCell(1);
                    const arrivalTimeCell = row.insertCell(2);
                    const classCell = row.insertCell(3);
                    const availableCell = row.insertCell(4);
                    const priceCell = row.insertCell(5);
                    const selectCell = row.insertCell(6);

                    trainCell.innerHTML = train.trainName;
                    departTimeCell.innerHTML = train.depTime;
                    arrivalTimeCell.innerHTML = train.arrivalTime;
                    classCell.innerHTML = clazz.classABBR;
                    availableCell.innerHTML = clazz.availableSeats;
                    priceCell.innerHTML = "price";

                    if (parseInt(clazz.availableSeats) < passengersCount) {
                        selectCell.innerHTML = "<input type=\"button\" disabled=\"true\" />";
                    } else {
                        let selectBtnHTML = "<input type=\"button\" class=\"btn btn-default train_select_btn\"\
                                                    style=\"width: 100%; margin-bottom: 4px;\" value=\"Select\" ";
                        selectBtnHTML.concat("onclick=\"selectTrain(" + train.trainCode + ", " + clazz.classCode + ", " + train.depTime + ")\" />");
                        selectCell.innerHTML = selectBtnHTML;
                    }
                });
            });

            returnTrains.forEach(function(train) {
                train.classList.forEach(function(clazz) {
                    const row = returnTrainsTable.insertRow(0);
                    const trainCell = row.insertCell(0);
                    const departTimeCell = row.insertCell(1);
                    const arrivalTimeCell = row.insertCell(2);
                    const classCell = row.insertCell(3);
                    const availableCell = row.insertCell(4);
                    const priceCell = row.insertCell(5);

                    trainCell.innerHTML = train.trainName;
                    departTimeCell.innerHTML = train.depTime;
                    arrivalTimeCell.innerHTML = train.arrivalTime;
                    classCell.innerHTML = clazz.classABBR;
                    availableCell.innerHTML = clazz.availableSeats;
                });
            });
        }, "JSON")
        .fail(function () {
            //todo handle fail
        });
    }

    function removeAllTableRows(table) {
        for(var i = table.rows.length - 1; i > 0; i--) {
            table.deleteRow(i);
        }
    }

    function selectTrain(trainCode, classCode, departureTime) {
        console.log(trainCode);
        console.log(classCode);
        console.log(departureTime);
    }
</script>

<jsp:include page="template/footer.jsp" />

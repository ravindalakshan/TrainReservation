<jsp:include page="template/header.jsp" />

<!-- Navigation -->
<header class="navigater-ble" id="">
    <div class="container-fluid">
        <div class="row mobitel_hl"></div>
        <div class="row">
            <div class="col-md-12 row">
                <div class="col-md-1"></div>
                <div class="col-md-2 step-ble comleted-ble">Home <i class="fas fa-check-circle"></i><span><i class="fas fa-chevron-right"></i></span>
                </div>
                <div class="col-md-2 step-ble ongoing-ble">Check Availability<span><i
                            class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble ">Seat Plan<span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Resavation<span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Summary</div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
</header>

<% if (${seat_error}) { %>
<script>
    $(window).on('load', function() {
        Swal.fire({
            type: 'error',
            title: 'Error',
            text: '!',
            footer: '<a href>Why do I have this issue?</a>'
        });
    });
</script>
<% } %>

<div class="container">
    <div class="d-flex justify-content-center">
        <form action="seats">
            <div class="form-group">
                <label for="numberOfSeatsInput">Number of seats</label>
                <input type="number" class="form-control" id="numberOfSeatsInput" placeholder="Enter number of seats">
            </div>
            <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" value="${seatCount}" id="sequential">I need sequential seats
                    </label>
                  </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>

<jsp:include page="template/footer.jsp" />
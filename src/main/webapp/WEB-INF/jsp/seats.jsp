<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="template/header.jsp" />

<!-- Navigation -->
<header class="navigater-ble" id="">
    <div class="container-fluid">
        <div class="row mobitel_hl"></div>
        <div class="row">
            <div class="col-md-12 row">
                <div class="col-md-1"></div>
                <div class="col-md-2 step-ble comleted-ble"><a href="/">Home</a> <i class="fas fa-check-circle"></i><span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble comleted-ble"><a href="/dashboard">Check Availability</a> <i class="fas fa-check-circle"></i><span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble ongoing-ble">Seat Plan<span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Resavation<span><i class="fas fa-chevron-right"></i></span></div>
                <div class="col-md-2 step-ble">Summary</div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
</header>

<c:if test="${seat_error == 'true'}">
    <script>
        $(window).on('load', function() {
            Swal.fire({
                type: 'error',
                title: 'Error',
                text: 'Requested number of seats not available'
            });
        });
    </script>
</c:if>

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

<div style="position: absolute; bottom: 0; left: 0; right: 0">
    <jsp:include page="template/footer.jsp" />
</div>

    </body>
</html>
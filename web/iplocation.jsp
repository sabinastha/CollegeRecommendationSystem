<%-- 
    Document   : iplocation
    Created on : Sep 4, 2017, 1:53:00 PM
    Author     : shrestha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div  id="map"></div>
         <script>
          function initMap() {
            //var location = {lat:40.86473060000001, lng:-73.92815239999999};
            var location = {lat:40.865090, lng:-73.928137};
            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 13,
              center: location,
              scrollwheel:false
            });
            var marker = new google.maps.Marker({
              position: location,
              map: map,
              title:"Compton Eye"
            });
            var directionsService = new google.maps.DirectionsService;
            var directionsDisplay = new google.maps.DirectionsRenderer({
              draggable: true,
              map: map,
              panel: document.getElementById('right-panel')
            });

            directionsDisplay.addListener('directions_changed', function() {
              computeTotalDistance(directionsDisplay.getDirections());
            });
            
   <% foreach(college as colleges){ %>
           
            document.getElementById('seeroute').addEventListener('click', function() {
            var orilat = <%=lat%>
            var orilong= <%=lng%>
            var orilatnum = Number(orilat);
            var orilongnum= Number(orilong);
            //document.getElementById('total').innerHTML = orilatnum + 'what' + orilongnum;
            var origclient= {lat:orilatnum, lng:orilongnum};
            displayRoute(origclient , location, directionsService,directionsDisplay); } );
          }
          function displayRoute(origin, destination, service, display) {
            service.route({
              origin: origin,
              destination: destination,
              travelMode: 'DRIVING',
              avoidTolls: true
            }, function(response, status) {
              if (status === 'OK') {
                display.setDirections(response);
              } else {
               document.getElementById('total').innerHTML='Could not display driving directions due to: ' + status;
              // display.setDirections(response);
              }
            });
          }

          function computeTotalDistance(result) {
            var total = 0;
            var myroute = result.routes[0];
            for (var i = 0; i < myroute.legs.length; i++) {
              total += myroute.legs[i].distance.value;
            }
            total = total / 1000;
            document.getElementById('total').innerHTML = total + ' km';
            //document.getElementById('seeroute').hide();
            $("#seeroute").hide();
            return distance;

          }
          
        </script>
        <script 
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK02nqWVSsg29-E-C9q3TnLlkzSeJ45rU&callback=initMap">
</script>
    </body>
</html>


<?php
if(isset($_SESSION['custID'])) {$customerID = $_SESSION['custID']; unset($_SESSION['custID']);}
else {$customerID = $_POST['custID'];}

$query = "SELECT * FROM customers WHERE customers.customerID = $customerID";

$result = mysql_query($query);
  $data = mysql_fetch_array($result);
?>
<table id="displayInfo" border=1>
<tr><th colspan=2>Customer Details</th></tr>
<tr><td>CustomerID:</td> <td><?php echo $data['customerID'];?></td></tr>
<tr><td>First Name: </td> <td><?php echo $data['Firstname'];?></td></tr>
<tr><td>Last Name: </td> <td><?php echo $data['LastName'];?></td></tr>
<tr><td>Email Address: </td> <td><?php echo $data['EmailAddress'];?></td></tr>
<tr><th colspan=2>
	<form>
		<input type="button" value="Edit" name="Edit_customer" onClick="postValue('custInfoEdit.html', {FirstName:'<?php echo $data['Firstname'];?>', LastName:'<?php echo $data['LastName'];?>', email:'<?php echo $data['EmailAddress'];?>', ID:'<?php echo $data['customerID'];?>'});"> 
	</form>
</th></tr>

</table>
<br></br>


<h3> Customer Bookings </h3>

<table border="1" align=left id="displayInfo">
<tr>
<th><h4>ScheduleID</h4></th>
<th><h4>FlightNo</h4></th>
<th><h4>Departure Date</h4></th>
<th><h4>Departure Time</h4></th>
<th><h4>Arrival time</h4></th>
<th><h4>Travle Agent</h4></th>
<th><h4>No of passengers</h4></th>
<th><h4>TotalCost</h4></th>

</tr>

<?php 
$bookingsQuery = 'SELECT * FROM bookings, flightSchedule, bookings_passengers WHERE bookings.customerID = '.$customerID.' AND flightSchedule.ScheduleID = bookings.FlightScheduleID AND bookings.bookingID = bookings_passengers.bookingID';
$result = mysql_query($bookingsQuery);

 $data = mysql_fetch_array($result);
$ScheduleID = $data['ScheduleID'];
$FlightNo = $data['FlightNo'];

echo '<tr onClick="javascript:postValue(\'editBooking.html\', {bookingID:\''.$data['bookingID'].'\'});">';
echo '<td>';
echo '<a href="javascript:postValue(\'scheduleInfo.html\', {scheduleID:\''.$ScheduleID.'\'});">'.$ScheduleID.'</a>'; 
echo '</td>';

echo '<td>';
echo '<a href="javascript:postValue(\'viewFlight.html\', {flightNo:\''.$FlightNo.'\'});">'.$FlightNo.'</a>'; 
echo '</td>';

echo '<td>';
echo $data['departuredate'];
echo '</td>';

echo '<td>';
echo $data['departureTime'];
echo '</td>';

echo '<td>';
echo $data['arrivalTime'];
echo '</td>';

echo '<td>';
echo $data['travelAgent'];
echo '</td>';

echo '<td>';
echo mysql_num_rows($result);
echo '</td>';


echo '<td>';
echo $data['totalCost'];
echo '</td>';



echo '</tr>';?>
</table>



</div>


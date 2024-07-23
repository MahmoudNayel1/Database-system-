<?php
    	include "connectMe.php";
    	// Check connection
	if ($conn->connect_error) {
  		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "select agentjobtypes, numberofjobs from agentjobs";
	$result = $conn->query($sql);

	echo "<html><body>Agent jobs<hr color='green'>";
	echo "<table><tr><th>Job Type</th>   <th>Number of jobs</th>   </tr>";
	

	if($result->num_rows > 0)
	{
		while($row = $result->fetch_assoc())
		{
			echo"<tr><td>".$row['agentjobtypes']."</td><td>".$row['numberofjobs']."</td></tr>";
		}

	}else{
		echo "0 results";
	}
	echo "</table</body></html>";
	$conn->close();
?>
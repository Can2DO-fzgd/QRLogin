<html>
<head>
	<title>login</title>
	<meta charset="UTF-8"/>
</head>
<body>
	<?php 
		require 'mysql_connect.php';
		$randnumber = "";
		for ($i=0;$i<8;$i++)
		$randnumber .= rand(0, 9);
		mysql_query("insert into login_record (randnumber) values ('$randnumber')");
	?>
	<img src="http://qr.liantu.com/api.php?text=<?php  echo $randnumber; ?>" width="300px"/> 
	<input hidden="hidden" type="text" name="randnumber" id="randnumber" value="<?php echo $randnumber; ?>" />
</body>
<script>
	function polling(){
		//Ö´ÐÐÂÖÑ¯²Ù×÷
		var xmlHttp;
		if (window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else {
			xmlHttp = new ActiveXobject("Microsoft.XMLHTTP");
		}
		
		xmlHttp.onreadystatechange = function(){
			if (xmlHttp.status == 200 && xmlHttp.readyState == 4){
				result = xmlHttp.responseText;
				if (result == 'true')
					window.location.href = 'welcome.php';
			}
		
		}
		
		randnumber = document.getElementById('randnumber').value;
		xmlHttp.open("GET", "polling.php?randnumber=" + randnumber, true);
		xmlHttp.send();
	}
	setInterval("polling()", 1000);
</script>
</html>

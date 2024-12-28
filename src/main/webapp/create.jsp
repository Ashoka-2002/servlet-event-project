<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Event Page </title>
</head>
<style>
h1{
text-align:center;
background-color: teal;
padding:2vh 0;
font-family: sans-serif;
}
 form {
height: 5vh;
width: 20vw;
diplay:block;
margin:auto;

}
form input{
height: 5vh;
width: 20vw;
text-align:center;
margin-top: 2vh;
font-family: sans-serif;
font-size: 15px;
font-weight: bold;
border-radius: 20px;
background-color: orange;
color:white;

}
form button{
height: 5vh;
width: 15vw;
margin-top: 2vh;
font-family: sans-serif;
font-size: 20px;
color:white;
font-weight: bold;
border-radius: 20px;
background-color: blue;

}




</style>
<body>
<h1>Create Event</h1>
<form action="create">
<input type="text" name="id" placeholder="Enter ID">
<input type="text" name="title" placeholder="Enter Title Name">
<input type="text" name="loc" placeholder="Enter Location">
<input type="text" name="date" placeholder="Enter date">
<input type="text" name="guest" placeholder="Enter Cheif Guest">
<button type="submit">Submit</button>

</form>





</body>
</html>
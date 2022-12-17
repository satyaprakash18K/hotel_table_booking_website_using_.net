<html><head><script type="text/javascript">
function checkLogin() {
 if(document.myform.user.value=="" && document.myform.passwd.value=="") 
{alert("User Name and Password can not be empty"); }
else  if(document.myform.user.value=="")
             {alert("User Name can not be empty"); }
else if(document.myform.passwd.value=="")
            { alert("Password can not be empty");  }
else if(document.myform.passwd.value.length < 8)
	   { alert("Password should be of minimum 8 characters"); }
else 
	      { alert ("Form is Validated Successfully"); 
	         return true; }
	 
                    return false;
           } // end of function
      </script>
      </head>
<body>
      <p>Login Form </p>
 <form name="myform" action="http://127.0.0.1/Loginn.php" method="GET"  onsubmit="return checkLogin()">

        <Label> User Name:</Label>
         <input type="text" name="user" value="" />
         <Label> Password:</Label> 
        <input type="password" name="passwd" value="" />  
         <input type="submit"  value="Login"/>
         <input type="reset"  value="Reset" />
        </form></body></html>

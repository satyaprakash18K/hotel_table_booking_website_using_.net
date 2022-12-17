<html>
<body>
<%
    dim con,rs,uname,upass
    set con=Server.CreateObject("ADODB.connection")
    con.Provider ="Microsoft.Jet.OLEDB.4.0"
    con.Open "C:\\inetpub\wwwroot\delicious\login.mdb"
    set rs=Server.CreateObject("ADODB.recordset")
    rs.open "log",con,0,3,2
    uname=Request.Form("tuname")
    upass=Request.Form("tpass")
    do while not rs.EOF
    if rs("username")=uname AND rs("password")=upass then
    Response.Redirect "index.html"
    else 
    rs.MoveNext
    end if
    Loop
    Response.write("login not successfull")
    con.close
    set con=nothing 
%>  
</body>
</html>

<%
dim numvisits
response.cookies("NumVisits").Expires=date+365
numvisits=request.cookies("NumVisits")
if numvisits="" then
	response.cookies("NumVisits")=1
	response.write("TABLE BOOKED")
else
response.cookies("NumVisits")=numvisits+1
response.write("YOU HAVE ALREADY BOOKED THE TABLE " &numvisits)

end if
%>
<!DOCTYPE html>
<html>
<body>
<br><br>
<u><a href="index.html" style="color:grey">PREVIOUS</a> <u>
</body>
</html>

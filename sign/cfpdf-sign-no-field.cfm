<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed_no_field.pdf")>


<cfpdf action="sign" 
	   source="#thisFile#" 
	   destination="#outFile#" 
	   keystore="#expandPath('/signatures/JohnDoe.p12')#" 
	   keystorepassword="johnpass" 
	   overwrite="true" pages="1" 
	   height="50"
  	   width="250" 
  	   position="340,90" 
  	   author="false">

<cfpdf action="read" name="myPDF" source="#outFile#" />

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />

<!--- MashaEdelen.p12 --->
<!--- summit419 --->
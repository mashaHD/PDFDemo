<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed.pdf")>

<cfpdf action="sign"
	   signaturefieldname="EMPLOYEE SIGNATURE"
	   source="#thisFile#" 
	   destination="#outFile#" 
	   keystore="#expandPath('/signatures/JohnDoe.p12')#" 
	   keystorepassword="johnpass" 
	   overwrite="true" 
	   author="false">

<cfpdf action="read" name="myPDF" source="#outFile#" />

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />

<!--- MashaEdelen.p12 --->
<!--- summit419 --->

<!--- JohnDoe.p12 --->
<!--- johnpass --->


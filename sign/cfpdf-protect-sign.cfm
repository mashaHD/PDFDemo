<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>
<cfset protectedFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_protected.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_protected_signed.pdf")>

<cfpdf action="protect" 
	   source="#thisFile#" 
	   destination="#protectedFile#" 
	   newOwnerPassword="securePass" 
	   overwrite="yes" 
	   permissions="AllowPrinting">

<cfpdf action="sign"
	   signaturefieldname="EMPLOYEE SIGNATURE"
	   source="#protectedFile#" 
	   destination="#outFile#" 
	   keystore="#expandPath('/signatures/JohnDoe.p12')#" 
	   keystorepassword="johnpass" 
	   overwrite="true"
	   password="securePass" 
	   author="false">

<cfpdf action="read" name="myPDF" source="#outFile#" />

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />












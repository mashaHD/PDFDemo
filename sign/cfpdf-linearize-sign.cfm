<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>
<cfset linearFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_linear.pdf")>
<!--- <cfset archivedFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_archived.pdf")>
 --->

<!--- linearize --->
<cfpdf action="write" source="#thisFile#" destination="#linearFile#" saveOption="incremental" overwrite="yes">

 <cfpdf action="sign"
	   signaturefieldname="EMPLOYEE SIGNATURE"
	   source="#linearFile#" 
	   destination="#linearFile#" 
	   keystore="#expandPath('/signatures/JohnDoe.p12')#" 
	   keystorepassword="johnpass" 
	   overwrite="true"
	   password="securePass" 
	   author="false">



<!--- archive --->
<!--- <cfpdf action="archive" source="#thisFile#" destination="#archivedFile#" overwrite="true" />
 --->



<cfpdf action="read" name="myPDF" source="#linearFile#" />

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />








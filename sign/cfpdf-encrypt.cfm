<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_encrypted.pdf")>

<cfpdf action="protect" 
	   source="#thisFile#" 
	   destination="#outFile#"  
	   overwrite="yes" 
	   newOwnerPassword="newPass"
	   encrypt="rc4_40"
	   permissions="all">

<cfpdf action="read" name="myPDF" source="#outFile#" />

<!--- <cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->

<cfdump var="#myPDF#" />



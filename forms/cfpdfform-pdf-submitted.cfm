<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_readData.pdf")>

<cfpdfform source="#PDF.content#" action="read" result="fields"/>

<cfhtmltopdf destination="#thisFile#" 
			 overwrite="true">

	<cfdump var="#fields#" />

</cfhtmltopdf>

<cfpdf action="read" name="myPDF" source="#thisFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />


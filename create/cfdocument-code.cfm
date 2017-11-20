<cfset thisFile = ExpandPath("\assets\PDFs\cfdocument-code.pdf")>

<cfdocument filename="#thisFile#" format="PDF" overwrite="true" localUrl="true">
	This is a cfdocument test <cfoutput>#now()#</cfoutput>
	<img src="../assets/Images/adobe.png">
</cfdocument>

<cfpdf action="read" name="myPDF" source="#thisFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
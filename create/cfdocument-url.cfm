<cfset thisFile = ExpandPath("\assets\PDFs\cfdocument-url.pdf")>

<!--- Call a webpage--->
<cfhttp url="https://www.today.com/pets/april-giraffe-pregnant-again-park-official-says-stay-tuned-t118673" 
		method="get" 
		resolveurl="yes">		

<!--- Convert content of webpage to PDF and Scale it --->
<cfdocument format="PDF" scale="80" filename="#thisFile#" overwrite="true">
	<cfoutput>#cfhttp.fileContent#</cfoutput>
</cfdocument>

<cfpdf action="read" name="myPDF" source="#thisFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
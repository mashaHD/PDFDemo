<cfset thisFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url.pdf")>
<cfset wmFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url-watermark.pdf")>

<!--- Watermark --->
<cfpdf action="addwatermark" 
	   source="#thisFile#" 
	   destination="#wmFile#" 
	   image="../assets/Images/watermark.png" 
	   foreground="yes" 
	   overwrite="yes" 
	   opacity="2"
	   />

<cfpdf action="read" name="myPDF" source="#wmFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />

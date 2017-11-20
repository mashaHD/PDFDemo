<cfset thisFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url.pdf")>
<cfset hfFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url-header-footer.pdf")>
<cfset nohfFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url-removedhf.pdf")>

<cfpdf action="addheader" source="#thisFile#" text="Not Again!" destination="#hfFile#" overwrite="yes" />

<cfpdf action="read" name="myPDF" source="#hfFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />

<!--- <cfpdf action="removeHeaderFooter" source="#hfFile#" destination="#nohfFile#" overwrite="yes" />

<cfpdf action="read" name="myPDF" source="#nohfFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->
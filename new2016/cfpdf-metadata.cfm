<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset outFile = ExpandPath("\xml-out\metadata.xmp")>

<!--- Export metadata --->
<cfpdf action="export" type="metadata" source="#thisFile#" exportto="#outFile#" overwrite="yes"></cfpdf>

<cfcontent file="#outFile#" type="text/xml" />
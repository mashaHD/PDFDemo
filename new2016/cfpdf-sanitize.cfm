<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\about_metadata_sanitized.pdf")>

<!--- sanitize --->
<cfpdf action="read" name="myDoc" source="#thisFile#" />
<cfdump var="#myDoc#" />

<cfpdf action="sanitize" source="#thisFile#" destination="#outFile#" overwrite="true"/>

<cfpdf action="read" name="myDoc" source="#outFile#" />
<cfdump var="#myDoc#" />

<h2><a href="http://pdfsdemo.loc/assets/PDFs/about_metadata_sanitized.pdf">View Sanitized File</a></h2>
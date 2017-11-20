<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>

<cfpdf action="read" name="myDoc" source="#thisFile#" />

<cfdump var="#myDoc#" />


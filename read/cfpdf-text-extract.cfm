<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>

<cfpdf action="extracttext" source="#thisFile#" name="myXML" type="xml" />

<cfcontent type="text/xml" />
<cfoutput>#myXML#</cfoutput>

<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset redFile = ExpandPath("\assets\PDFs\about_metadata_redacted.pdf")>

<cfpdf action="redact" source="#thisFile#" destination="#redFile#" overwrite="true">
     <cfpdfparam pages="2" coordinates="50,732,195,742">
     <cfpdfparam pages="7" coordinates="420,550,600,650">
</cfpdf>

<cfpdf action="read" name="myDoc" source="#redFile#" />
<cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />

<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset redFile = ExpandPath("\assets\PDFs\about_metadata_redacted_bywords.pdf")>

<cfset redactionWords = ["Meta","Adobe"]>

<!--- MARKWHOLEWORD, MATCHPARTIALWORD_MARKWHOLEWORD, MATCHPARTIALWORD_MARKPARTIALWORD --->

<cfpdf action="redact" source="#thisFile#" destination="#redFile#" overwrite="true">
     <cfpdfparam pages="1-8" wordstoredact="#redactionWords#" ignorecase="true" wordmatchingcriteria="MATCHPARTIALWORD_MARKWHOLEWORD">
</cfpdf>

<cfpdf action="read" name="myDoc" source="#redFile#" />
<cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />
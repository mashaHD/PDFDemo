<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset comFile = ExpandPath("\xml-out\comments.xfdf")>

<!--- comments --->
<cfpdf action="export" type="comment" source="#thisFile#" exportto="#comFile#" overwrite="yes"/>

<cfcontent file="#comFile#" type="text/xml" />
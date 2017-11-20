<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled.pdf")>

<cfset outFile = ExpandPath("\xml-out\fields-xml.xml")>

<cfpdfform source="#thisFile#" xmldata="x" result="pdfResult" action="read"/>

<cfdump var="#pdfResult#">

<cffile action="write" file="#outFile#" output="#x#"> 

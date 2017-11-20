<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_xml_pop.pdf")>
<cfset outFile = ExpandPath("\xml-out\fields-xml-pop.xml")>

<cfpdfform source="#thisFile#" xmldata="x" result="pdfResult" action="read"/>

<cfdump var="#pdfResult#">

<cffile action="write" file="#outFile#" output="#x#"> 

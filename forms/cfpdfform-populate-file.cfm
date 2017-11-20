<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_xml_pop.pdf")>
<cfset xmlFile = ExpandPath("\xml-out\fields-populate.xml")>>

<cfpdfform action="populate" source="#thisFile#" destination="#outFile#" xmldata="#xmlFile#" overwrite="true"/>

<cfpdf action="read" name="myPDF" source="#outFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
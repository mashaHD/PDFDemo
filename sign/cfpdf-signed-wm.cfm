<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed_wm.pdf")>

<!--- Watermark --->
<cfpdf action="addwatermark" source="#thisFile#" destination="#outFile#" image="../assets/Images/adobe.png" foreground="yes" overwrite="yes" opacity="2"/>

<cfpdf action="read" name="myPDF" source="#outFile#" />

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
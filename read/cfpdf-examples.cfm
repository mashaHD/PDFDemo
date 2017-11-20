<cfset thisPath = ExpandPath("/")>
<cfset thisFilePath = "PDFs\cfhtmltopdf-url-example-watermark.pdf">
<cfset thisFile = "#thisPath##thisFilePath#">
<cfset ImagePath = "#thisPath#\Images\">

<!--- <cfpdf action="read" name="myDoc" source="#thisFile#" />
<cfdump var="#myDoc#" /> --->

<!--- <cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />
 --->
<!--- <cfpdf action="extracttext" source="#thisFile#" name="myXML" />
<cfcontent type="text/xml" />
<cfoutput>#myXML#</cfoutput> --->

<!--- <cfpdf action="extractimage" source="../#Replace(thisFilePath,"\","/","all")#"  overwrite="yes" /> 
<img src="Images/cfimage-0.jpg" /> --->

<!--- Thumbnails --->
<!--- <cfpdf action="read" name="myDoc" source="#thisFile#" />
<cfpdf action="thumbnail" source="myDoc" destination="#ImagePath#" overwrite="yes" />
<cfimage action="read" name="img" source="#ImagePath#\thumbnail_page_1.jpg" format="jpg" />
<cfcontent reset="true" variable="#imageGetBlob(img)#" type="image/jpeg" /> --->

<!--- Watermark --->
<!--- <cfset wmPDF = "#thisPath#PDFs/cfhtmltopdf-url-example-watermark.pdf">
<cfpdf action="addwatermark" source="#wmPDF#" destination="#thisPath#PDFs/cfhtmltopdf-url-example-watermark.pdf"  image="../Images/adobe_ColdFusion_generated.png" foreground="yes" overwrite="yes" rotation="30" position="300,0" opacity="10" />
<cfpdf action="read" name="myPDF" source="#thisPath#PDFs/cfhtmltopdf-url-example-watermark.pdf" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->

<!--- <cfpdf action="addheader" source="#thisFile#" name="mypdf" text="Header Here" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->

<!--- <cfpdf action="addFooter" source="#thisFile#" name="mypdf" text="Page _PAGENUMBER of _LASTPAGENUMBER" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->

<!--- <cfpdf action="optimize" source="#thisFile#" overwrite="yes" algo="bilinear" />
<cfpdf action="read" name="mypdf" source="#thisFile#" /> 
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> --->



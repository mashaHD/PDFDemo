<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>
<cfset ImagePath = ExpandPath("Images")>

<!--- Thumbnails --->
<cfpdf action="read" name="myDoc" source="#thisFile#" />
<cfpdf action="thumbnail" source="myDoc" destination="#ImagePath#" overwrite="yes" />


<cfimage action="read" name="img" source="#ImagePath#\thumbnail_page_1.jpg" format="jpg" />
<cfcontent reset="true" variable="#imageGetBlob(img)#" type="image/jpeg" />

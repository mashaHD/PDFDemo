<cfset thisFile = ExpandPath("\assets\PDFs\about_metadata.pdf")>

<cfpdf action="extractimage" source="#thisFile#"  overwrite="yes" /> 

<img src="Images/cfimage-0.jpg" width="500" />

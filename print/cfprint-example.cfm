<cfset thisPath = ExpandPath("/")>
<cfset thisFilePath = "PDFs\about_metadata.pdf">
<cfset thisFile = "#thisPath##thisFilePath#">

<cfdump var="#getPrinterList()#" abort="true">


<cfprint type="pdf" source="#thisFile#" copies="5" paper="letter">
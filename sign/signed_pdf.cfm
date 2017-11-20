<!--- READ ALL SIGNATURE FIELDS --->
<h3>Read Signature Fields</h3>
<cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/dsdemo_acrobat_signature_filed.pdf')#" 
	   name="readsignaturefields" >
	   
<cfdump var="#readsignaturefields#" label="Read Signature Fields">	
<br><br>

<!--- SIGN, VALIDATE, READ AUTHOR PDF --->
<!--- SIGN --->

<h3>Sign PDF without signature field</h3>
<cfpdf action="sign" 
	   source="#expandpath('pdfs/dsdemo_acrobat_signature_filed.pdf')#" 
	   destination="#expandpath('pdfs/dsDemo_acrobat_signed.pdf')#" 
	   keystore="#expandPath('signatures/MashaEdelen.p12')#" 
	   keystorepassword="Yana0413" 
	   overwrite="true" pages="1" 
	   height="50"
  	   width="250" 
  	   position="10,30" 
  	   author="false">

<cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/dsDemo_acrobat_signed.pdf')#" 
	   name="readsignaturefields2" > 	   

<cfdump var="#readsignaturefields2#"/>
<br><br>


<h3>Sign PDF with signature field</h3>
<cfpdf action="sign"
	   signaturefieldname="Applicant_Signature"
	   source="#expandpath('pdfs/dsDemo_acrobat_signed.pdf')#" 
	   destination="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed.pdf')#" 
	   keystore="#expandPath('signatures/MashaEdelen.p12')#" 
	   keystorepassword="Yana0413" 
	   overwrite="true" author="false">

<cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed.pdf')#" 
	   name="readsignaturefields3" > 	   

<cfdump var="#readsignaturefields3#"/>
<br><br>

<h3>Validate Signature</h3>
<!--- VALIDATE --->
<cfpdf action="validatesignature" 
		source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed.pdf')#" 
		name="signatureValidation" >
		
<cfdump var="#signatureValidation#" label="Validate Signature">

<cfabort>

<br><br>
<h3>Unsign All</h3>
<cfpdf action="unsign" 
		unsignall="true"
 		source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed.pdf')#"
 		destination="#expandpath('pdfs/unsigned.pdf')#" overwrite="yes" >
 
 <cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/unsigned.pdf')#" 
	   name="readsignaturefields4" > 	   

<cfdump var="#readsignaturefields4#"/> 


<!--- READ ALL SIGNATURE FIELDS --->
<!---<cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed_author.pdf')#" 
	   name="pdfAfterSignature_author" >
	   
<cfdump var="#pdfAfterSignature_author#" label="Signed by author"/>--->


<!--- END AUTHOR --->

<!--- SIGN, VALIDATE, READ APPLICANT PDF --->
<!--- SIGN --->	   
<!---<cfpdf action="sign" signaturefieldname="Applicant_Signature" 
	   source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed_author.pdf')#" 
	   destination="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed_applicant.pdf')#" 
	   keystore="#expandPath('../../signatures/Shirak.pfx')#" 
	   keystorepassword="CFSummit2015" 
	   overwrite="true"
	   author="false">--->

<!--- VALIDATE --->
<!---<cfpdf action="validatesignature" 
		source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed_applicant.pdf')#" 
		name="signatureValidation_applicant" >
		
<cfdump var="#signatureValidation_applicant#" label="Applicant signature validation">--->


<!--- READ ALL SIGNATURE FIELDS --->
<!---<cfpdf action="readsignaturefields" 
	   source="#expandpath('pdfs/dsDemo_acrobat_signature_field_signed_applicant.pdf')#" 
	   name="pdfAfterSignature_applicant" >

<cfdump var="#pdfAfterSignature_applicant#" label="Applicant signature read">--->



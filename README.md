
<!-- ABOUT THE PROJECT -->
## Description

Pull User Information From MSGraph And Set OWA Email Signatures Based On HTML Template


## Pre-Requisites

- You must first build an HTML signature template by either creating your own or using a site like https://www.mail-signatures.com/signature-generator/#
- When creating your template replace the fields you want to include with the following variables. When the script runs it will replace these variables with the information pulled from MS Graph. 

<br>

<ul> 
<li>%%FirstName%%</li>
<li>%%LastName%%</li>
<li>%%Title%%</li>
<li>%%PhoneNumber%%</li>
<li>%%MobileNumber%%</li>
<li>%%Email%%</li>
<li>%%Company%%</li>
<li>%%Street%%</li>
<li>%%City%%</li>
<li>%%ZipCode%%</li>
<li>%%State%%</li>
<li>%%Country%%</li>
</ul> 

<br>

- Once you have created your HTML Template you must save it to C:\temp\signature.txt or update the path in the script. 


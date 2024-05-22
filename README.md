<!-- ABOUT THE PROJECT -->
## Description

Pull User Information From MSGraph And Set OWA Email Signatures Based On HTML Template


## Pre-Requisites

- You must first build an HTML signature template by either creating your own or using a site like https://www.mail-signatures.com/signature-generator/#
- When creating your template replace the fields you want to include with the following variables. When the script runs it will replace these variables with the information pulled from MS Graph. 
  
%%FirstName%%
%%LastName%%
%%Title%%
%%PhoneNumber%%
%%MobileNumber%%
%%Email%%
%%Company%%
%%Street%%
%%City%%
%%ZipCode%%
%%State%%
%%Country%%


- Once you have created your HTML Template you must save it to C:\temp\signature.txt or update the path in the script. 

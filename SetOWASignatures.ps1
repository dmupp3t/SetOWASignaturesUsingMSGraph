<#
    .SYNOPSIS
    Set-OWA-Signatures.ps1

    .DESCRIPTION
    Pull User Information From MSGraph And Set OWA Email Signatures Based On HTML Template
   
    .NOTES
    Written by: James Monroe
    Website:    www.jmonroeiv.com
    LinkedIn:   linkedin.com/in/jmonroeiv

    .CHANGELOG
    V1.01, 05/22/2024 - Initial version
    
#>

# Connect to Microsoft Graph API
Connect-MgGraph -Scopes "User.Read.All", "UserAuthenticationMethod.Read.All", "AuditLog.Read.All"


# Retrieve users using the Microsoft Graph API with property
$propertyParams = @{
    All            = $true }
$users = Get-MgBetaUser @propertyParams

# Pull HTML Template from local file
$HTMLsig = Get-Content "C:\temp\signature.txt"

foreach($user in $users){
    #Temp Variable
    $HTMLSigX = "";
    #Build signature HTML replacing data pulled from MSGraph 
    $HTMLSigX = $HTMLsig.replace('%%FirstName%%', $user.GivenName).replace('%%LastName%%', $user.Surname).replace('%%Title%%', $user.JobTitle).replace('%%PhoneNumber%%', $user.TelephoneNumber).replace('%%MobileNumber%%', $user.Mobile).replace('%%Email%%', $user.Mail).replace('%%Company%%', $user.CompanyName).replace('%%Street%%', $user.StreetAddress).replace('%%City%%', $user.City).replace('%%ZipCode%%', $user.PostalCode).replace('%%State%%', $user.State).replace('%%Country%%', $user.Country) 
    #Set the HTML Signature (NOTE: Roaming Signatures must be disabled or this will have no effect.) 
    Set-MailboxMessageConfiguration $user.Mail -SignatureHTML $HTMLSigX -AutoAddSignature $true -AutoAddSignatureOnReply $true 

}

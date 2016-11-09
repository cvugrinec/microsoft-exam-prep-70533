# Implementing Azure Infrastructure Services 
### This REPO contains the materials required for the preparation for the 70-533 exam.

    Prerequisites

    * Azure Subscription with proper rights
    * A machine running Docker
    * Not using it, but adviseable to use for prep: PowerShell


* Program
  * check the powerpt: talk about azure
  * Virtual Machines
    * Bunch of slides
    * Lab, scripts are in docker but also here in the REPO
    * Demo, create certificate, upload Hyper V image, ScaleSet demo
  * Storage
    * Bunch of slides
    * Lab
  * Network
    * Bunch of slides
    * Lab
  * Certification
    * Tip and links

This Lab uses a docker image which contains the LAB stuff you require, azure-cli already installed.
#### docker run -it cvugrinec/microsoft-prep70533
Here is a template you can start using right away: <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fapache2-on-ubuntu-vm%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

There will also be sessions on the following topics:
* Web Applications/ Paas services
  * Deploy some webapplications, using the concept of slots. Also pretend to do a production update
  * Enable monitoring for 1 or 2 endpoints in your app for different test locations
  * Play with the traffic manager and understand when to use it
  * Enable CDN and understand what needs to be done (for e.g. which DNS records)
  * Implement several databases and understand the difference in products and service levels.
  * Implement autoscaling
* Azure Active Directory (IAM)
  * Add a custom domain to your AAD
  * Add a custom web application and use the SSO with own credential store
  * Add an application from the store and enable SSO
  * Add an application using existing SSO (for e.g. from Google or facebook)
  * Implement a multisite network


# Deploy a Static Website on Azure using Terraform

This guide will walk you through the steps to deploy a static website on Azure using a Storage Account and Terraform.

## Prerequisites

- Terraform installed on your machine
- An Azure account
- Azure CLI installed and logged in

## Step-by-Step Guide

### 1. Clone the Repository
Clone this repository to your local machine:

```bash
git clone <repository-url>
```
### 2. Configure Azure Provider
Ensure you are logged in to Azure CLI:

```bash
az login
```
### 3. Initialize Terraform
Initialize the Terraform configuration:

```bash
terraform init
```
### 4. Review and Modify Configuration
Review the `main.tf` file and modify the configuration if necessary. Ensure the `subscription_id` is set to your Azure subscription ID.

### 5. Apply the Terraform Configuration
Apply the Terraform configuration to create the resources:

```bash
terraform apply
```

Type `yes` when prompted to confirm the creation of resources.

### 6. Verify Deployment
Once the deployment is complete, you can verify the static website by navigating to the URL provided by the Azure Storage Account.

## Files in the Repository

- `main.tf`: Contains the Terraform configuration for deploying the static website.
- `index.html`: The main HTML file for the static website.
- `404.html`: The custom 404 error page for the static website.

## Terraform Configuration

Here is a brief overview of the Terraform configuration in `main.tf`:

- **Provider configuration**: Specifies Azure as the cloud provider.
- **Storage Account**: Creates an Azure Storage Account.
- **Static Website configuration**: Configures the Storage Account to host a static website.

## Cleanup

To delete the resources created by Terraform, run:

```bash
terraform destroy
```

Type `yes` when prompted to confirm the deletion of resources.

## Conclusion

You have successfully deployed a static website on Azure using Terraform. For more information on Terraform and Azure, refer to the official documentation:

- [Terraform Documentation](https://www.terraform.io/docs)
- [Azure Documentation](https://docs.microsoft.com/en-us/azure/)

Feel free to customize the HTML files and Terraform configuration to suit your needs. Happy deploying!

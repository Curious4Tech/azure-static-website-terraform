# Deploy a Static Website on Azure using Terraform

This guide will walk you through the steps to deploy a static website on Azure using a Storage Account and Terraform.

## Prerequisites

- Terraform installed on your machine
- An Azure account
- Azure CLI installed and logged in

## Step-by-Step Guide

### 1. Clone the Repository
Clone this repository to your local machine and move to the directory cloned:

```bash
git clone <repository-url>
```


### 2. Configure Azure Provider
Ensure you are logged in to Azure CLI:

```bash
az login
```
### 3. Set the Azure Subscription
If you have multiple Azure subscriptions, you need to set the subscription you want to use. Run the following command to set the subscription:

```bash
az account set --subscription "your-subscription-id"
```

### 4. Review and Modify Configuration
Review the **`main.tf`** file and modify the configuration if necessary. Ensure the **`subscription_id`** is set to your Azure subscription ID.

### 5. Initialize Terraform
Initialize the Terraform configuration:

```bash
terraform init
```

### 6. Validate the Configuration
Validate the Terraform configuration to check for syntax errors and verify that everything is set up correctly:

```bash
terraform validate
```

### 7. Plan the Deployment

Run **`terraform plan`** to see the resources that will be created:

```bash
terraform plan
```
This will show you the execution plan and what changes will be made to your environment.

### 8. Apply the Terraform Configuration
Apply the Terraform configuration to create the resources:

```bash
terraform apply
```

Type **`yes`** when prompted to confirm the creation of resources.

### 9. Verify Deployment
Once the deployment is complete, you can verify the static website by navigating to the URL provided by the Azure Storage Account.

## Terraform Configuration

Here is a brief overview of the Terraform configuration in **`main.tf`**:

- **Provider configuration**: Specifies Azure as the cloud provider.
- **Storage Account**: Creates an Azure Storage Account.
- **Static Website configuration**: Configures the Storage Account to host a static website.

## 10 Cleanup

To delete the resources created by Terraform, run:

```bash
terraform destroy
```

Type **`yes`** when prompted to confirm the deletion of resources.

### 11 . Verify Deletion
Once the deletion is complete, you can verify  by navigating to **`Resource Groups`** in the Azure Portal.

## Conclusion

You have successfully deployed a static website on Azure using Terraform. For more information on Terraform and Azure, refer to the official documentation:

- [Terraform Documentation](https://www.terraform.io/docs)
- [Azure Documentation](https://docs.microsoft.com/en-us/azure/)

Feel free to customize the HTML files and Terraform configuration to suit your needs. Happy deploying!

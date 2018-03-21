# Jenkins Orchestration

## Prerequisite
Jenkins Server: [Click Here](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_P20_Demo_Pipeline/)

UserName : ```Check with alhussai@microsoft.com```

Password: ```Check with alhussai@microsoft.com```

GitHub Repo: [Templates](https://github.com/alihhussain/training-events/tree/master/jenkins)

Service Principal: [How to create](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?toc=%2Fazure%2Fazure-resource-manager%2Ftoc.json&view=azure-cli-latest)

## Pipeline

1. Creating Resource Group: 
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_RG/)
2.  Creating Network Security Group: 
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_NSG/)   
    * [Template File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_NSG.json)
    * [Parameter File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_NSG.parameters.json) 
3. Creating Virtual Network
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_VNET/)   
    * [Template File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_VNet.json)
    * [Parameter File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_VNet.parameters.json) 
4. Create a Public Ip Address
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_PIP/)   
    * [Template File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_PIP.json)
    * [Parameter File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_PIP.parameters.json)
5. Creating a Network Interface Card
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_NIC/)   
    * [Template File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_NIC.json)
    * [Parameter File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_NIC.parameters.json)
6. Creating a Virtual VM
    * [Jenkins Job Link](http://jenkinsv2.eastus.cloudapp.azure.com:8080/job/ARM_Demo/job/Build_VM/)   
    * [Template File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_VM.json)
    * [Parameter File](https://github.com/alihhussain/training-events/blob/master/jenkins/Build_VM.parameters.json)
7. Run the Custom Extension against the VM
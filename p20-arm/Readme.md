Challenges - 

Day 1-2 Challenges:
+	“Hello World” – ARM template that accepts generic input and passes it as output
    +   Key Takeaways - Core Elements of an ARM Template and the Different ways to deploy 
 
+	Extend ARM template to provision VNET w/ one subnet 
    +	Template takes the following inputs - 
        +	Virtual Network Name and Address Prefix
        +	Subnet Name and Address Prefix
    +   Key Takeaways - Parameters and Parameter Files
 
+	Extend ARM template to opening ports 80 and 22 and apply to the default subnet
    +   Key Takeaways - Variables, dependencies and idempotency

+	Extend ARM Template to deploy a webserver VM
    +   VM requirements -
        +   Linux VM
        +   Apache website
        +   Pull website config from https://raw.githubusercontent.com/albertwo1978/training-events/master/p20-arm/scripts/install_apache.sh
    +   Key Takeaways - Customer script extensions, globally unique naming context and complex dependencies
 
+	Extend ARM template to add Public Load Balancer and put Webserver in backend pool
    +   Key Takeaways - Resource ownership and dependencies
 
+	Extend ARM template to add NAT Rule to ILB for SSH access to backend
    +   Key Takeaways - Network access policies
 
+	Extend ARM template to replace VM with a VM Scale Set 
    +   Key Takeaways - 

+	Extend ARM template to add a custom script extension that installs a web server packages/roles and deploy basic web app 

+	Extend ARM template to include auto scaling policy to scale up when CPU performance hits 90%

Bonus
+	Create Log Analytics Workspace
 
+	Add Metrics to Workspace
 
+	Create Alerts based on Metrics
    +   https://github.com/Azure/azure-quickstart-templates/blob/6691996036fd095cee3d07336acfcba48110d268/201-web-app-sql-database/azuredeploy.json 
 
Day 3 Challenges:  
+	Deploy Jenkins and/or VSTS for CI/CD
 
+	Piece together previously created content into pipeline
 
+	Parameterize VM Names


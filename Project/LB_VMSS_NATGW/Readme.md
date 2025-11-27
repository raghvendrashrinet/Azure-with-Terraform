# Terraform Resource Flow

``` 
Internet
    |
    | Public IP (LB Frontend)
    v
+---------------+
| Load Balancer |  <--- Port 80 HTTP Rule ---> Backend Pool
| (Public LB)   |
+---------------+
         |
         | Backend Pool
         v
+-------------------+  
| VMSS (Linux VMs)  |  <--- NSG (Allow 80 only from LB)
|                   |
+---------|---------+
          |
+---------v---------+
|   Subnet          |  <--- NSG Association
| (10.0.1.0/24)     |  <--- NAT Gateway Association
+---------|---------+
          |
+---------v---------+        Public IP (NAT GW)
| NAT Gateway       | ------------------> Internet
| (Outbound only)   | 
+--------------------+
         ^
         |
    VNet (10.0.0.0/16)
         ^
         |
Resource Group (rg)
``` 

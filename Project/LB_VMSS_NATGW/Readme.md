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

## Note : When you attach a NAT Gateway to a subnet, you do NOT need to explicitly add outbound allow rules in the NSG to the NAT Gateway IP.

- The NAT Gateway is responsible for outbound translation and routing, but outbound traffic from the VMs to the internet passes through the subnet NAT Gateway without having to modify NSG outbound rules.
- NOT need a UDR (User Defined Route) for NAT Gateway outbound traffic.  Route 0.0.0.0/0 → NAT Gateway Public IP is AUTO-ADDED

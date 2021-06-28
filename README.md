# Terraform In Action
![Terraform In Action](tia.png)

[**Buy Terraform In Action Here**](https://www.manning.com/books/terraform-in-action?query=terraform%20in%20action)

**Aliases used**:  
(add these into your `~/.bashrc`, `~/.bash_profile`, `~/.zhrc`, etc. and use `source` command to apply them.)
```
alias t=terraform
export $aa="-auto-approve"
```
Commands/Flags Legend:
```
t         = terraform command abbreviated.
$aa       = -auto-approve skips interactive approval of plan before applying.
t init    = command is used to initialize a working directory containing terraform configuration files.
t show    = command is used to provide human-readable output from a state or plan file.
t plan    = command creates an execution plan.
t apply   = command executes the actions proposed in a terraform plan.
t destroy = command is a convenient way to destroy all remote objects managed by a particular terraform configuration.
```

---
### Chapter 1
##
**Hello World!**  
[**Documentation**](https://github.com/devdot4/terraform-in-action/tree/main/chapter-1#chapter-1)
|1.1|[main.tf](chapter-1/1.1/main.tf)|
----|-----------|
|**1.2**|[**main.tf**](chapter-1/1.2/main.tf)|
|**1.3**|[**main.tf**](chapter-1/1.3/main.tf)|
---
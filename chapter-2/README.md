# Chapter - 1
**Section 2.1** |
-|
`chapter-2/2.1/main.tf` |

The first part of the code with version lock your code. Second part will declare a `local_file` resource with Sun Tzu's: Art of War content.
```
terraform {
  required_version = ">= 0.15"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "literature" {
    filename = "art_of_war.txt"
    content     = <<-EOT
      Sun Tzu said: The art of war is of vital importance to the State.
      It is a matter of life and death, a road either to safety or to 
      ruin. Hence it is a subject of inquiry which can on no account be
      neglected.
    EOT
}
```
Inspecting the plan:  
`t plan -out plan.out`  
`t show -json plan.out > plan.json`  
`cat plan.json`
```
{"format_version":"0.2","terraform_version":"1.0.1","planned_values":{"root_module":{"resources":[{"address":"local_file.literature","mode":"managed","type":"local_file","name":"literature","provider_name":"registry.terraform.io/hashicorp/local","schema_version":0,"values":{"content":"Sun Tzu said: The art of war is of vital importance to the State.\nIt is a matter of life and death, a road either to safety or to \nruin. Hence it is a subject of inquiry which can on no account be\nneglected.\n","content_base64":null,"directory_permission":"0777","file_permission":"0777","filename":"art_of_war.txt","sensitive_content":null,"source":null},"sensitive_values":{}}]}},"resource_changes":[{"address":"local_file.literature","mode":"managed","type":"local_file","name":"literature","provider_name":"registry.terraform.io/hashicorp/local","change":{"actions":["create"],"before":null,"after":{"content":"Sun Tzu said: The art of war is of vital importance to the State.\nIt is a matter of life and death, a road either to safety or to \nruin. Hence it is a subject of inquiry which can on no account be\nneglected.\n","content_base64":null,"directory_permission":"0777","file_permission":"0777","filename":"art_of_war.txt","sensitive_content":null,"source":null},"after_unknown":{"id":true},"before_sensitive":false,"after_sensitive":{"sensitive_content":true}}}],"configuration":{"provider_config":{"local":{"name":"local","version_constraint":"~\u003e 2.0"}},"root_module":{"resources":[{"address":"local_file.literature","mode":"managed","type":"local_file","name":"literature","provider_config_key":"local","expressions":{"content":{"constant_value":"Sun Tzu said: The art of war is of vital importance to the State.\nIt is a matter of life and death, a road either to safety or to \nruin. Hence it is a subject of inquiry which can on no account be\nneglected.\n"},"filename":{"constant_value":"art_of_war.txt"}},"schema_version":0}]}}}
```
`cat art_of_war.txt`
```
Sun Tzu said: The art of war is of vital importance to the State.
It is a matter of life and death, a road either to safety or to
ruin. Hence it is a subject of inquiry which can on no account be
neglected.
```
You can also apply results of terraform plan exclicitly with:  
`t plan -out plan.out && t apply "plan.out"`

The execution plan is similar to generated terraform plan.
##
**Section 2.2** |
-|
`chapter-2/2.2/main.tf` |

test
```
test
```
##
**Section 2.3** |
-|
`chapter-2/2.3/main.tf` |

test
```
test
```
##
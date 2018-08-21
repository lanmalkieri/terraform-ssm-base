variable "write" {
  type = "list"

  description = <<DESC
  List of maps with the Parameter values in this format.
  Parameter Write Format Example

  [{

    #---------------------------------------------------#  
    # REQUIRED
    #---------------------------------------------------#  
    name = "/prod/frontend/url" 
    value = "url.com"
    type = "String" 

    #---------------------------------------------------#  
    # OPTIONAL
    #---------------------------------------------------#  
    description = "URL for prod frontend" 
    overwrite = false

  }]
DESC

  default = []
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Map containing tags that will be added to the parameters"
}

variable "split_delimiter" {
  type        = "string"
  default     = "~^~"
  description = "A delimiter for splitting and joining lists together for normalising the output"
}

variable "kms_arn" {
  type        = "string"
  default     = ""
  description = "The ARN of a KMS key used to encrypt and decrypt SecretString values"
}

variable "enabled" {
  type        = "string"
  default     = "true"
  description = "Set to `false` to prevent the module from creating and accessing any resources"
}

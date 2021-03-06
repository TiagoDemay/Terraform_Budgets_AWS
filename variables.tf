variable "limit" {
  description = "Budget alarm limit"
  type        = string
}

variable "time_unit" {
  description = "Units for time"
  type        = string
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}

variable "budget" {
  description = "Basic Budget Properties"
  type        = map
}

variable "notification" {
  description = "Budget notification properties"
}

variable "cost_filters" {
  description = "The Budget filters to use"
  type        = map
}

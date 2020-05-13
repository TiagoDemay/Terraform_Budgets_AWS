resource "aws_budgets_budget" "org" {
  count             = length(data.aws_organizations_organization.example.accounts)
  name              = "Budget-${data.aws_organizations_organization.example.accounts[count.index].name}"
  budget_type       = "COST"
  limit_amount      = 100
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2020-01-01_12:00"

  cost_filters = {
    LinkedAccount   =  data.aws_organizations_organization.example.accounts[count.index].id
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["tiagoaodc@insper.edu.br","rauligs@insper.edu.br"]
  }
}
resource "aws_budgets_budget" "global" {
  name              = "Anual_Budget_GLOBAL"
  budget_type       = "COST"
  limit_amount      = 20000
  limit_unit        = "USD"
  time_unit         = "ANNUALLY"
  time_period_start = "2020-01-01_12:00"
  
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["tiagoaodc@insper.edu.br","rauligs@insper.edu.br"]
  }
}
resource "aws_budgets_budget" "supercomp" {
  name              = "Budget-Supercomp"
  budget_type       = "COST"
  limit_amount      = 100
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2020-01-01_12:00"

  cost_filters = {
    LinkedAccount   =  "090634953621"
  }
  
    notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 800
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["tiagoaodc@insper.edu.br","rauligs@insper.edu.br"]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 300
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["tiagoaodc@insper.edu.br","rauligs@insper.edu.br"]
  }
}
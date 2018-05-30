#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Profit for each month
monthly_profit <- round(revenue - expenses,2)
print(paste(c("Monthly profit: ",round(monthly_profit)), collapse = "  "))

#Profit after tax
monthly_profit_after_tax <- round(revenue * 0.7 - expenses,2)
print(paste(c("Monthly profit after tax: ",round(monthly_profit_after_tax)), collapse = "  "))

#profit margin for each month - profit after tax divided by revenue
profit_margin <- round(monthly_profit_after_tax/revenue * 100,2)
print(paste(c("Monthly profit margin: ",profit_margin), collapse = "  "))

#good months - where the profit after tax was greater than the mean for the year
#bad months - where the profit after tax was less than the mean for the year
mean_profit_after_tax <- round(mean(monthly_profit_after_tax),2)
good_months <- monthly_profit_after_tax > mean_profit_after_tax
print(paste(c("Good months: ",good_months), collapse = "  "))

bad_months <-  monthly_profit_after_tax < mean_profit_after_tax
print(paste(c("Bad months: ",bad_months), collapse = "  "))

#the best month - where the profit after tax was max for the year
#the worst month - where the profit after tax was min for the year
max_monthly_profit <- round(max(monthly_profit_after_tax),2)
min_monthly_profit <- round(min(monthly_profit_after_tax),2)

max_profit_month <- monthly_profit_after_tax == max_monthly_profit
print(paste(c("Max Profit months: ",max_profit_month), collapse = "  "))

min_profit_month <- monthly_profit_after_tax == min_monthly_profit
print(paste(c("Min Profit months: ",min_profit_month), collapse = "  "))

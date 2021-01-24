dataset =read.csv('german_credit.csv')
dim(dataset)
str(dataset)
dataset$default = as.factor(dataset$default)
dataset$telephone = as.factor(dataset$telephone)
dataset$foreign_worker = as.factor(dataset$foreign_worker)
dataset$housing = as.factor(dataset$housing)
dataset$credits_this_bank = as.factor(dataset$credits_this_bank)
dataset$job = as.factor(dataset$job)
dataset$other_installment_plans = as.factor(dataset$other_installment_plans)
dataset$savings = as.factor(dataset$savings)
dataset$other_debtors = as.factor(dataset$other_debtors)
dataset$property = as.factor(dataset$property)
dataset$personal_status_sex = as.factor(dataset$personal_status_sex)
dataset$present_emp_since = as.factor(dataset$present_emp_since)
dataset$purpose = as.factor(dataset$purpose)
dataset$credit_history = as.factor(dataset$credit_history)
dataset$account_check_status  = as.factor(dataset$account_check_status)
str(dataset)

set.seed(123)
library(caTools)
split = sample.split(dataset$default, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
testing_set = subset(dataset, split == FALSE)

# Fitting Logestic Regression to the training set
classifier = glm(formula = default  ~ .,
                 family = binomial,
                 data = training_set)
summary(classifier)

# Predicting the Testing set result
prob_pred = predict(classifier,
                    type = 'response',
                    newdata = testing_set[,-1])
prob_pred

y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
length(y_pred)
length(testing_set[,-21])

# Making the Confusion Matrix
cm = table(testing_set[,1], y_pred)
cm






classifier1 = glm(formula = default  ~ . -age -property -present_res_since -telephone -foreign_worker -job -credits_this_bank -housing -people_under_maintenance ,
                 family = binomial,
                 data = training_set)
summary(classifier1)

# Predicting the Testing set result
prob_pred1 = predict(classifier1,
                    type = 'response',
                    newdata = testing_set[,-1])
prob_pred

y_pred1 = ifelse(prob_pred > 0.5, 1, 0)
y_pred
length(y_pred)
length(testing_set[,-21])

# Making the Confusion Matrix
cm1 = table(testing_set[,1], y_pred1)
cm1

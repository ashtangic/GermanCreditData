# Importing the data
credit_dataset =read.csv('german_credit.csv')

# Checking the dimension of the dataset
dim(credit_dataset)
# [1] 1000   21

# Checking the structure of dataset
str(credit_dataset)
# 'data.frame':	1000 obs. of  21 variables:
# $ default                   : int  0 1 0 0 1 0 0 0 0 1 ...
# $ account_check_status      : chr  "< 0 DM" "0 <= ... < 200 DM" "no checking account" "< 0 DM" ...
# $ duration_in_month         : int  6 48 12 42 24 36 24 36 12 30 ...
# $ credit_history            : chr  "critical account/ other credits existing (not at this bank)" "existing credits paid back duly till now" "critical account/ other credits existing (not at this bank)" "existing credits paid back duly till now" ...
# $ purpose                   : chr  "domestic appliances" "domestic appliances" "(vacation - does not exist?)" "radio/television" ...
# $ credit_amount             : int  1169 5951 2096 7882 4870 9055 2835 6948 3059 5234 ...
# $ savings                   : chr  "unknown/ no savings account" "... < 100 DM" "... < 100 DM" "... < 100 DM" ...
# $ present_emp_since         : chr  ".. >= 7 years" "1 <= ... < 4 years" "4 <= ... < 7 years" "4 <= ... < 7 years" ...
# $ installment_as_income_perc: int  4 2 2 2 3 2 3 2 2 4 ...
# $ personal_status_sex       : chr  "male : single" "female : divorced/separated/married" "male : single" "male : single" ...
# $ other_debtors             : chr  "none" "none" "none" "guarantor" ...
# $ present_res_since         : int  4 2 3 4 4 4 4 2 4 2 ...
# $ property                  : chr  "real estate" "real estate" "real estate" "if not A121 : building society savings agreement/ life insurance" ...
# $ age                       : int  67 22 49 45 53 35 53 35 61 28 ...
# $ other_installment_plans   : chr  "none" "none" "none" "none" ...
# $ housing                   : chr  "own" "own" "own" "for free" ...
# $ credits_this_bank         : int  2 1 1 1 2 1 1 1 1 2 ...
# $ job                       : chr  "skilled employee / official" "skilled employee / official" "unskilled - resident" "skilled employee / official" ...
# $ people_under_maintenance  : int  1 1 2 2 2 2 1 1 1 1 ...
# $ telephone                 : chr  "yes, registered under the customers name " "none" "none" "none" ...
# $ foreign_worker            : chr  "yes" "yes" "yes" "yes" ...

# Converting the necessary independent variables into factors
credit_dataset$default = as.factor(credit_dataset$default)
credit_dataset$account_check_status  = as.factor(credit_dataset$account_check_status)
credit_dataset$credit_history = as.factor(credit_dataset$credit_history)
credit_dataset$purpose = as.factor(credit_dataset$purpose)
credit_dataset$savings = as.factor(credit_dataset$savings)
credit_dataset$present_emp_since = as.factor(credit_dataset$present_emp_since)
credit_dataset$personal_status_sex = as.factor(credit_dataset$personal_status_sex)
credit_dataset$other_debtors = as.factor(credit_dataset$other_debtors)
credit_dataset$property = as.factor(credit_dataset$property)
credit_dataset$other_installment_plans = as.factor(credit_dataset$other_installment_plans)
credit_dataset$housing = as.factor(credit_dataset$housing)
credit_dataset$credits_this_bank = as.factor(credit_dataset$credits_this_bank)
credit_dataset$job = as.factor(credit_dataset$job)
credit_dataset$telephone = as.factor(credit_dataset$telephone)
credit_dataset$foreign_worker = as.factor(credit_dataset$foreign_worker)

# Again checking the structure of our dataset
str(credit_dataset)
# 'data.frame':	1000 obs. of  21 variables:
# $ default                   : Factor w/ 2 levels "0","1": 1 2 1 1 2 1 1 1 1 2 ...
# $ account_check_status      : Factor w/ 4 levels "< 0 DM",">= 200 DM / salary assignments for at least 1 year",..: 1 3 4 1 1 4 4 3 4 3 ...
# $ duration_in_month         : int  6 48 12 42 24 36 24 36 12 30 ...
# $ credit_history            : Factor w/ 5 levels "all credits at this bank paid back duly",..: 2 4 2 4 3 4 4 4 4 2 ...
# $ purpose                   : Factor w/ 10 levels "(vacation - does not exist?)",..: 5 5 1 8 3 1 8 4 5 3 ...
# $ credit_amount             : int  1169 5951 2096 7882 4870 9055 2835 6948 3059 5234 ...
# $ savings                   : Factor w/ 5 levels ".. >= 1000 DM ",..: 5 2 2 2 2 5 4 2 1 2 ...
# $ present_emp_since         : Factor w/ 5 levels ".. >= 7 years",..: 1 3 4 4 3 3 1 3 4 5 ...
# $ installment_as_income_perc: int  4 2 2 2 3 2 3 2 2 4 ...
# $ personal_status_sex       : Factor w/ 4 levels "female : divorced/separated/married",..: 4 1 4 4 4 4 4 4 2 3 ...
# $ other_debtors             : Factor w/ 3 levels "co-applicant",..: 3 3 3 2 3 3 3 3 3 3 ...
# $ present_res_since         : int  4 2 3 4 4 4 4 2 4 2 ...
# $ property                  : Factor w/ 4 levels "if not A121 : building society savings agreement/ life insurance",..: 3 3 3 1 4 4 1 2 3 2 ...
# $ age                       : int  67 22 49 45 53 35 53 35 61 28 ...
# $ other_installment_plans   : Factor w/ 3 levels "bank","none",..: 2 2 2 2 2 2 2 2 2 2 ...
# $ housing                   : Factor w/ 3 levels "for free","own",..: 2 2 2 1 1 1 2 3 2 2 ...
# $ credits_this_bank         : Factor w/ 4 levels "1","2","3","4": 2 1 1 1 2 1 1 1 1 2 ...
# $ job                       : Factor w/ 4 levels "management/ self-employed/ highly qualified employee/ officer",..: 2 2 4 2 2 4 2 1 4 1 ...
# $ people_under_maintenance  : int  1 1 2 2 2 2 1 1 1 1 ...
# $ telephone                 : Factor w/ 2 levels "none","yes, registered under the customers name ": 2 1 1 1 1 2 1 2 1 1 ...
# $ foreign_worker            : Factor w/ 2 levels "no","yes": 2 2 2 2 2 2 2 2 2 2 ...

# Dividing the dataset into training set and test set
set.seed(111)
training_set = credit_dataset[1:800,]
test_set = credit_dataset[801:1000,]

# Fitting of Logestic Regression on training set
log_reg_1 = glm(default  ~ .,
                family = binomial,
                data = training_set)
summary(log_reg_1)
#                                                                              Pr(>|z|)    
# (Intercept)                                                               0.483112    
# account_check_status>= 200 DM / salary assignments for at least 1 year    0.021176 *  
# account_check_status0 <= ... < 200 DM                                     0.249102    
# account_check_statusno checking account                                   8.42e-11 ***
# duration_in_month                                                         0.006296 ** 
# credit_historycritical account/ other credits existing (not at this bank) 0.000823 ***
# credit_historydelay in paying off in the past                             0.029483 *  
# credit_historyexisting credits paid back duly till now                    0.029258 *  
# credit_historyno credits taken/ all credits paid back duly                0.693405    
# purposebusiness                                                           0.097525 .  
# purposecar (new)                                                          0.945966    
# purposecar (used)                                                         0.000600 ***
# purposedomestic appliances                                                0.035903 *  
# purposeeducation                                                          0.614426    
# purposefurniture/equipment                                                0.095191 . 
# purposeradio/television                                                   0.032094 *  
# purposerepairs                                                            0.372937    
# purposeretraining                                                         0.075319 .  
# credit_amount                                                             0.028293 *  
# savings... < 100 DM                                                       0.024476 *  
# savings100 <= ... < 500 DM                                                0.168830    
# savings500 <= ... < 1000 DM                                               0.263862    
# savingsunknown/ no savings account                                        0.377038    
# present_emp_since... < 1 year                                             0.518729    
# present_emp_since1 <= ... < 4 years                                       0.705007    
# present_emp_since4 <= ... < 7 years                                       0.040767 *  
# present_emp_sinceunemployed                                               0.362483    
# installment_as_income_perc                                                0.000393 ***
# personal_status_sexmale : divorced/separated                              0.312601    
# personal_status_sexmale : married/widowed                                 0.993958    
# personal_status_sexmale : single                                          0.001034 ** 
# other_debtorsguarantor                                                    0.011884 *  
# other_debtorsnone                                                         0.130975    
# present_res_since                                                         0.943708  
# propertyif not A121/A122 : car or other, not in attribute 6               0.348450    
# propertyreal estate                                                       0.171186    
# propertyunknown / no property                                             0.511375    
# age                                                                       0.072802 .  
# other_installment_plansnone                                               0.111814    
# other_installment_plansstores                                             0.957621    
# housingown                                                                0.836443    
# housingrent                                                               0.349826    
# credits_this_bank2                                                        0.107818    
# credits_this_bank3                                                        0.780197    
# credits_this_bank4                                                        0.356321    
# jobskilled employee / official                                            0.409342    
# jobunemployed/ unskilled - non-resident                                   0.318234    
# jobunskilled - resident                                                   0.430062    
# people_under_maintenance                                                  0.073767 .  
# telephoneyes, registered under the customers name                         0.118314    
# foreign_workeryes                                                         0.061516 .  
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# (Dispersion parameter for binomial family taken to be 1)
# 
# Null deviance: 975.68  on 799  degrees of freedom
# Residual deviance: 704.27  on 749  degrees of freedom
# AIC: 806.27
# 
# Number of Fisher Scoring iterations: 5

# Predicting the Testing set result
probability_prediction_1 = predict(log_reg_1,
                           type = 'response',
                           newdata = test_set[,-1])
probability_prediction_1 
# 801         802         803         804         805         806         807         808         809 
# 0.257678378 0.146732131 0.374600546 0.023965980 0.450006366 0.499882118 0.088422357 0.022905065 0.594404558 
# 810         811         812         813         814         815         816         817         818 
# 0.773169011 0.272736032 0.091079507 0.198495428 0.448433234 0.797716659 0.790524084 0.026945977 0.020514257 
# 819         820         821         822         823         824         825         826         827 
# 0.932720468 0.646901160 0.235535893 0.284840886 0.566878409 0.286361465 0.171099070 0.615301215 0.495911917 
# 828         829         830         831         832         833         834         835         836 
# 0.353041596 0.229432725 0.564016773 0.095157548 0.803201892 0.908120264 0.174979835 0.206179985 0.809962719 
# 837         838         839         840         841         842         843         844         845 
# 0.093837052 0.107466991 0.092607710 0.207585687 0.459460777 0.055708829 0.320173456 0.106842246 0.187333203 
# 846         847         848         849         850         851         852         853         854 
# 0.041302908 0.113359516 0.389603263 0.066720071 0.237318395 0.389608530 0.005018583 0.065269624 0.868772422 
# 855         856         857         858         859         860         861         862         863 
# 0.373575889 0.218293490 0.007206088 0.057126769 0.710926720 0.011405823 0.014855777 0.132592336 0.513232245 
# 864         865         866         867         868         869         870         871         872 
# 0.056975048 0.081867253 0.111212667 0.716373690 0.032712670 0.165433140 0.650529245 0.070110157 0.021293707
# 873         874         875         876         877         878         879         880         881 
# 0.095301365 0.099013267 0.566652805 0.255385222 0.844541556 0.170223661 0.570538353 0.023518766 0.023346514 
# 882         883         884         885         886         887         888         889         890 
# 0.068383861 0.297300957 0.064597072 0.282736354 0.705065127 0.167751144 0.689906252 0.298665240 0.117288255 
# 891         892         893         894         895         896         897         898         899 
# 0.682605788 0.032647830 0.262004488 0.136585827 0.031931650 0.041510997 0.764987705 0.002043759 0.028906711 
# 900         901         902         903         904         905         906         907         908 
# 0.388096294 0.171376439 0.094780238 0.035974794 0.068879990 0.069750550 0.357324179 0.085765066 0.575513867 
# 909         910         911         912         913         914         915         916         917 
# 0.042742730 0.230116691 0.348803455 0.408085188 0.282876886 0.018316365 0.763849323 0.710608284 0.024066472 
# 918         919         920         921         922         923         924         925         926 
# 0.638912172 0.493446650 0.524906820 0.229970810 0.137261405 0.634993033 0.408143639 0.841727226 0.806655495 
# 927         928         929         930         931         932         933         934         935 
# 0.588965978 0.650026715 0.027154387 0.620963801 0.328924414 0.410202779 0.077624862 0.038071892 0.655826071 
# 936         937         938         939         940         941         942         943         944 
# 0.682549059 0.179541914 0.527924899 0.891299461 0.022014593 0.097620870 0.041114182 0.024518595 0.022814173 
# 945         946         947         948         949         950         951         952         953 
# 0.421520553 0.907646566 0.750236501 0.190593901 0.444587683 0.066953999 0.303164752 0.197418451 0.321217571 
# 954         955         956         957         958         959         960         961         962 
# 0.691439493 0.502127335 0.229923362 0.151558813 0.058596121 0.566795071 0.370737181 0.063594816 0.644974537 
# 963         964         965         966         967         968         969         970         971 
# 0.153690650 0.077074844 0.549047863 0.426003426 0.300364361 0.236526162 0.111259456 0.312847649 0.162073701 
# 972         973         974         975         976         977         978         979         980 
# 0.249316029 0.960711208 0.946768268 0.102312387 0.133022141 0.052894283 0.234054575 0.310319108 0.799558705 
# 981         982         983         984         985         986         987         988         989 
# 0.109688329 0.423986560 0.349958715 0.484035244 0.024334322 0.637298954 0.862613506 0.038928913 0.493501427 
# 990         991         992         993         994         995         996         997         998 
# 0.238934094 0.089964253 0.265279841 0.272168570 0.673801499 0.047938202 0.046250949 0.581126744 0.059507877 
# 999        1000 
# 0.628148632 0.148470866 

# Converting predicted probablities into 1 or 0
prediction_1 = ifelse(probability_prediction_1 > 0.5, 1, 0)
prediction_1
# 801  802  803  804  805  806  807  808  809  810  811  812  813  814  815  816  817  818  819  820  821  822 
# 0    0    0    0    0    0    0    0    1    1    0    0    0    0    1    1    0    0    1    1    0    0 
# 823  824  825  826  827  828  829  830  831  832  833  834  835  836  837  838  839  840  841  842  843  844 
# 1    0    0    1    0    0    0    1    0    1    1    0    0    1    0    0    0    0    0    0    0    0 
# 845  846  847  848  849  850  851  852  853  854  855  856  857  858  859  860  861  862  863  864  865  866 
# 0    0    0    0    0    0    0    0    0    1    0    0    0    0    1    0    0    0    1    0    0    0 
# 867  868  869  870  871  872  873  874  875  876  877  878  879  880  881  882  883  884  885  886  887  888 
# 1    0    0    1    0    0    0    0    1    0    1    0    1    0    0    0    0    0    0    1    0    1 
# 889  890  891  892  893  894  895  896  897  898  899  900  901  902  903  904  905  906  907  908  909  910 
# 0    0    1    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    1    0    0 
# 911  912  913  914  915  916  917  918  919  920  921  922  923  924  925  926  927  928  929  930  931  932 
# 0    0    0    0    1    1    0    1    0    1    0    0    1    0    1    1    1    1    0    1    0    0 
# 933  934  935  936  937  938  939  940  941  942  943  944  945  946  947  948  949  950  951  952  953  954 
# 0    0    1    1    0    1    1    0    0    0    0    0    0    1    1    0    0    0    0    0    0    1 
# 955  956  957  958  959  960  961  962  963  964  965  966  967  968  969  970  971  972  973  974  975  976 
# 1    0    0    0    1    0    0    1    0    0    1    0    0    0    0    0    0    0    1    1    0    0 
# 977  978  979  980  981  982  983  984  985  986  987  988  989  990  991  992  993  994  995  996  997  998 
# 0    0    0    1    0    0    0    0    0    1    1    0    0    0    0    0    0    1    0    0    1    0 
# 999 1000 
# 1    0 


# To cross check our predicted results with actual results
cross_check_1 = table(test_set[,1], prediction_1)
cross_check_1
#    prediction_1
#     0   1
# 0 115  24
# 1  31  30

# Here efficiency of the model is 72.5%.



# Now let us try to improve our model by removing all the insignificants Independent variables
log_reg_2 = glm(default  ~ . -credits_this_bank -present_res_since -property  -telephone -foreign_worker -job  -housing -age -people_under_maintenance ,
                family = binomial,
                data = training_set)
summary(log_reg_2)
#                                                                            Pr(>|z|)    
# (Intercept)                                                               0.875428    
# account_check_status>= 200 DM / salary assignments for at least 1 year    0.008272 ** 
# account_check_status0 <= ... < 200 DM                                     0.213020    
# account_check_statusno checking account                                   9.98e-12 ***
# duration_in_month                                                         0.001384 ** 
# credit_historycritical account/ other credits existing (not at this bank) 0.001091 ** 
# credit_historydelay in paying off in the past                             0.075365 .  
# credit_historyexisting credits paid back duly till now                    0.028574 *  
# credit_historyno credits taken/ all credits paid back duly                0.978469    
# purposebusiness                                                           0.030130 *  
# purposecar (new)                                                          0.650215    
# purposecar (used)                                                         0.000566 ***
# purposedomestic appliances                                                0.010707 *  
# purposeeducation                                                          0.422069    
# purposefurniture/equipment                                                0.055613 .  
# purposeradio/television                                                   0.020520 *  
# purposerepairs                                                            0.266844    
# purposeretraining                                                         0.081968 .  
# credit_amount                                                             0.019064 *  
# savings... < 100 DM                                                       0.022402 *  
# savings100 <= ... < 500 DM                                                0.107056    
# savings500 <= ... < 1000 DM                                               0.328193    
# savingsunknown/ no savings account                                        0.454920    
# present_emp_since... < 1 year                                             0.303882    
# present_emp_since1 <= ... < 4 years                                       0.558567    
# present_emp_since4 <= ... < 7 years                                       0.065246 .  
# present_emp_sinceunemployed                                               0.428269    
# installment_as_income_perc                                                0.000168 ***
# personal_status_sexmale : divorced/separated                              0.462672    
# personal_status_sexmale : married/widowed                                 0.681877    
# personal_status_sexmale : single                                          0.000466 ***
# other_debtorsguarantor                                                    0.005588 ** 
# other_debtorsnone                                                         0.086886 .  
# other_installment_plansnone                                               0.055296 .  
# other_installment_plansstores                                             0.633429    
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# (Dispersion parameter for binomial family taken to be 1)
# 
# Null deviance: 975.68  on 799  degrees of freedom
# Residual deviance: 728.08  on 765  degrees of freedom
# AIC: 798.08
# 
# Number of Fisher Scoring iterations: 5

# Again predicting the Test set result
probability_prediction_2 = predict(log_reg_2,
                           type = 'response',
                           newdata = test_set[,-1])
probability_prediction_2 

prediction_2 = ifelse(probability_prediction_2 > 0.5, 1, 0)
prediction_2

# Again cross checking our predicted results with actual results
cross_check_2 = table(test_set[,1], prediction_2)
cross_check_2

#     prediction_2
#      0   1
# 0 120  19
# 1  29  32

# Now after improving our model our efficiency is now 76%.
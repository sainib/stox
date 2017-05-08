# Analysis of Nano/Micro/Small Cap Tech companies 

## DDLs etc 
```
create table earnings_growth(
symbol varchar(100),
company_name varchar(500),
eps varchar(50),
bofaml_eps_est_current_yr  varchar(50),
bofaml_eps_est_next_yr  varchar(50),
eps_growth_last_5_yr   varchar(50),
rev_growth_last_5_yr   varchar(50)
)


bash cs.sh Earnings_Growth.csv earnings_growth > earnings_growth.sql

create table fundamentals(
symbol varchar(100),
company_name varchar(500),
peg_ration_last_yr varchar(50),
net_profit_margin  varchar(50),
return_on_equity  varchar(50),
debt_to_equity   varchar(50),
price_cashflow   varchar(50),
price_book   varchar(50)
)

bash cs.sh Fundamentals.csv fundamentals > fundamentals.sql

create table ratings(
symbol varchar(100),
company_name varchar(500),
bofaml_investment_rating varchar(50),
bofaml_volatility_risk varchar(50),
bofaml_income_rating varchar(50),
morningstar_rating varchar(50),
SnP_Capital_IQ_Ranking varchar(50)
)

bash cs.sh Ratings.csv ratings > ratings.sql

create table historical_performance(
symbol varchar(100),
company_name varchar(500),
day_change_percentage varchar(50),
1_mon_change varchar(50),
3_mon_change varchar(50),
1_yr_change varchar(50),
3_yr_change varchar(50),
5_yr_change varchar(50),
10_yr_change varchar(50)
)

bash cs.sh Historical_Performance.csv historical_performance > historical_performance.sql


create table general_info(
symbol varchar(100),
company_name varchar(500),
dividend_yield varchar(50),
pe_ratio varchar(50),
sector_GICS varchar(50),
market_cap varchar(50),
institutional_ownership varchar(50)
);

bash cs.sh General_Info.csv general_info > general_info.sql

create table todays_activity(
symbol varchar(100),
company_name varchar(500),
last_price varchar(50),
days_change_dollar varchar(50),
days_change_percentage varchar(50),
bid varchar(50),
ask varchar(50),
days_volume varchar(50),
days_high varchar(50),
days_low varchar(50)
);

bash cs.sh Todays_Activity.csv todays_activity > todays_activity.sql

create table stock_info(
symbol varchar(100),
company_name varchar(500),
market_cap varchar(50),
sector_gics varchar(50),
exchange varchar(50),
pe_ratio varchar(50)
);


bash cs.sh Selected_Criteria.csv stock_info > stock_info.sql
```

## Overall View of all data 

```
CREATE VIEW stox AS 
select 
stock_info.symbol,
stock_info.company_name,
stock_info.market_cap,
stock_info.sector_gics,
stock_info.exchange,
stock_info.pe_ratio,
general_info.dividend_yield ,
general_info.institutional_ownership ,
historical_performance.day_change_percentage ,
historical_performance.1_mon_change ,
historical_performance.3_mon_change ,
historical_performance.1_yr_change ,
historical_performance.3_yr_change ,
historical_performance.5_yr_change ,
historical_performance.10_yr_change ,
ratings.bofaml_investment_rating ,
ratings.bofaml_volatility_risk ,
ratings.bofaml_income_rating ,
ratings.morningstar_rating ,
ratings.SnP_Capital_IQ_Ranking ,
fundamentals.peg_ration_last_yr ,
fundamentals.net_profit_margin ,
fundamentals.return_on_equity ,
fundamentals.debt_to_equity ,
fundamentals.price_cashflow ,
fundamentals.price_book ,
earnings_growth.bofaml_eps_est_current_yr ,
earnings_growth.bofaml_eps_est_next_yr ,
earnings_growth.eps_growth_last_5_yr ,
earnings_growth.rev_growth_last_5_yr 
from 
stock_info, general_info, historical_performance, ratings, fundamentals, earnings_growth
where 
earnings_growth.symbol = fundamentals.symbol AND 
fundamentals.symbol = ratings.symbol  AND 
ratings.symbol = historical_performance.symbol AND 
historical_performance.symbol  = general_info.symbol  AND 
general_info.symbol = stock_info.symbol
;
```

# Stocks Historic data API 

https://www.quandl.com/api/v1/datasets/WIKI/AAPL.csv?column=4&sort_order=asc&collapse=monthly&trim_start=2012-01-01&trim_end=2013-12-31

https://www.quandl.com/api/v1/datasets/WIKI/HRTG.csv?column=4&sort_order=asc&collapse=monthly&trim_start=2014-05-23&trim_end=2015-05-23

https://www.quandl.com/api/v1/datasets/WIKI/RESN.csv?column=4&sort_order=asc&collapse=monthly&trim_start=5/29/2014&trim_end=42153

__FORMAT__
"https://www.quandl.com/api/v1/datasets/WIKI/" ++ ".csv?column=4&sort_order=asc&collapse=monthly&trim_start=" ++ "&trim_end=" +

collapse potential values = daily, weekly, monthly, quaterly

https://www.alphavantage.co/documentation/

https://www.quandl.com/tools/full-list

http://projects.wsj.com/econforecast/#ind=gdp&r=20


curl -H 'Cache-Control: no-cache' -s 'http://www.nasdaq.com/callbacks/NLSHandler2.ashx' --data 'msg=min&symbol=HDP' | jq '.data[-1].price'

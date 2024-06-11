# bd-poc-renre-directquery

## Instructions

### Set up container
Follow the instructions [here](https://docs.dremio.com/current/get-started/docker-quickstart/) to install the Dremio docker container: In the top right, click the + button, and add the CSV in utilities/data from this repo. 

Finally, to ensure the data types are all correct, run the below SQL:
```
SELECT TO_DATE(AsofDate, 'YYYY-MM-DD', 1) AS AsofDate,
CUSIP, 
SectorCode, 
Strategy, 
CAST(MarketValue as DOUBLE) as MarketValue, 
CAST(EffectiveDuration as DOUBLE) as EffectiveDuration, 
CAST(OptionAdjustedSpread as DOUBLE) as OptionAdjustedSpread, LegalEntity, PortfolioTicker, OwnershipType, 
CAST(PercentWeight as DOUBLE) as PercentWeight
FROM "@admin".SampleData20240104 AS SampleData20240104;
```

### Run Demo
Run the create environment shell script to install the experimental version of the python API that supports a generic JDBC connector. This uses a Dremio Dialect JAR that is in `utilities/extra_jars`.

Finally, you will need to download the Dremio JDBC driver [here](https://www.dremio.com/drivers/jdbc/).

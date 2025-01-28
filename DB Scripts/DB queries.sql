USE `worldhappinessreport`;
delete FROM social_indexes where COUNTRY_YEAR_ID > 1;
delete FROM happiness_indexes where COUNTRY_YEAR_ID > 1;
delete FROM governance_indexes where COUNTRY_YEAR_ID > 1;
delete FROM country_year_map where COUNTRY_YEAR_ID > 1;
delete FROM countries where COUNTRY_CODE != 'A';
delete FROM regions where REGION_CODE  != 'A';
drop table countries;

SELECT * FROM regions;
SELECT * FROM countries;
SELECT * FROM country_year_map where COUNTRY_CODE='PALE';
SELECT * FROM governance_indexes where COUNTRY_YEAR_ID='1469';
SELECT count(happiness_index_id) FROM happiness_indexes;
SELECT * FROM social_indexes where COUNTRY_YEAR_ID='1469';

SELECT * FROM health_indexes;
SELECT * FROM Safety_infra_indexes;


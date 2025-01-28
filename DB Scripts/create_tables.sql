CREATE DATABASE  IF NOT EXISTS `worldhappinessreport`;
USE `worldhappinessreport`;
DROP TABLE IF EXISTS `Social_indexes`;   
DROP TABLE IF EXISTS `Governance_indexes`;    
DROP TABLE IF EXISTS `Happiness_indexes`;    
DROP TABLE IF EXISTS `Health_indexes`;    
DROP TABLE IF EXISTS `Safety_infra_indexes`;
DROP TABLE IF EXISTS `Country_year_map`;    
DROP TABLE IF EXISTS `Countries`;
DROP TABLE IF EXISTS `Regions`;


CREATE TABLE Regions (
	Region_code varchar(4),
    Region_description varchar (100) NOT NULL,
    PRIMARY KEY (Region_code)
    );
    
 CREATE TABLE Countries (
	Country_code varchar(4),
    Country_description varchar(100) NOT NULL,
    Region_code varchar(4),
    PRIMARY KEY (Country_code),
    FOREIGN KEY (Region_code) REFERENCES Regions(Region_code)
    );
    
CREATE TABLE Country_year_map (
	Country_year_id int(4) AUTO_INCREMENT,
    Year int(4) NOT NULL,
    Country_code varchar(4),
    PRIMARY KEY (Country_year_id),
    FOREIGN KEY (Country_code) REFERENCES Countries(Country_code)
    );
 
CREATE TABLE Social_indexes (
	Social_index_id int(5) AUTO_INCREMENT,
    Life_expectency float(7,5),
    Social_support float(7,5),
    Freedom_to_make_choices float(7,5),
    Generosity float(7,5),
    Family float(7,5),
    Country_year_id int(4),
    PRIMARY KEY (Social_index_id),
    FOREIGN KEY (Country_year_id) REFERENCES Country_year_map(Country_year_id)
    );
    
CREATE TABLE Governance_indexes (
	Governance_index_id int(5) AUTO_INCREMENT,
    Gdp_per_capita float(7,5) NOT NULL,
    Corruption_rate float(7,5),
    Country_year_id int(4),
    PRIMARY KEY (Governance_index_id),
    FOREIGN KEY (Country_year_id) REFERENCES Country_year_map(Country_year_id)
    );
  
CREATE TABLE Happiness_indexes (
	Happiness_index_id int(5) AUTO_INCREMENT,
    Happiness_score float(7,5) NOT NULL,
    Happiness_rank float(7,2) NOT NULL,
    Standard_error float(7,5),
    Country_year_id int(4),
    PRIMARY KEY (Happiness_index_id),
    FOREIGN KEY (Country_year_id) REFERENCES Country_year_map(Country_year_id)
    );
  
CREATE TABLE Health_indexes (
	Health_index_id int(5) AUTO_INCREMENT,
    Health_care_quality float(7,5),
    Mental_health float(7,5),
    Physical_health float(7,5),
    Health_care_access float(7,5),
    Air_quality float(7,5),
    Water_quality float(7,5),
    Country_year_id int(4),
    PRIMARY KEY (Health_index_id),
    FOREIGN KEY (Country_year_id) REFERENCES Country_year_map(Country_year_id)
    );

CREATE TABLE Safety_infra_indexes (
	Safety_infra_index_id int(5) AUTO_INCREMENT,
    Crime_rate float(7,5),
    Personal_safety_score float(7,5),
    Access_to_internet float(7,5),
    Educational_quality float(7,5),
    Unemployement_rate float(7,5),
    Housing_affordability float(7,5),
    Political_stability float(7,5),
    Transportation_infra float(7,5),
    Tourism_facility_quality float(7,5),
    Country_year_id int(4),
    PRIMARY KEY (Safety_infra_index_id),
    FOREIGN KEY (Country_year_id) REFERENCES Country_year_map(Country_year_id)
    );
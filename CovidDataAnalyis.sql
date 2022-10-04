select * from PortfolioProject..CovidDeaths
order by 3,4

select * from PortfolioProject..CovidVaccinations
order by 3,4

--Data we are dealing with:
SELECT location, date , total_cases,new_cases,total_deaths,population 
FROM PortfolioProject..CovidDeaths 
ORDER BY 1,2

--What are the percentage of deaths for the total number of the cases(who are infected) found?
SELECT location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 AS DeathRate
FROM PortfolioProject..CovidDeaths 
WHERE location = 'India'
ORDER BY 1,2
--RESULT: shows the likelihood of 1-3% of chances of dying if you contract COVID in India

-- Total cases vs Population
SELECT location, date, total_cases, population,(total_cases/population)*100 AS CasePercentage
FROM PortfolioProject..CovidDeaths 
WHERE location = 'India'
ORDER BY 1,2
--RESULT: shows the percentage of population who got covid

-- Which is the country with the highest infection rate in comparison to population


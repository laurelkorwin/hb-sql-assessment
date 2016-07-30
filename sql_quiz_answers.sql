SELECT brands.name, models.name, models.year, brands.discontinued, 
(brands.discontinued - models.year) AS years_until_brand_discontinued
FROM models LEFT JOIN brands ON (models.brand_name = brands.name)
WHERE brands.discontinued IS NOT NULL
ORDER BY brands.name, models.name, models.year;

-- the above query produced the exact same table as the answer displayed in the quiz - not sure why it wouldn't pass me...
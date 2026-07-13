-- Note: space separated column names like `Calories (kcal)` must be in backticks
-- Level 1 – Basic SELECT (10 Questions)
-- Display all records.
-- Display only FoodName and Category.
-- Display FoodName, Calories, and Protein.
-- Show all foods belonging to Fruits.
-- Show all foods belonging to Leafy Greens.
-- Show foods having more than 20 g protein.
-- Show foods having less than 50 kcal.
-- Show foods having more than 5 g fiber.
-- Show foods whose names start with B.
-- Show foods whose names contain rice.

-- Display all records.
select * from vegetarian_foods_master_list_accurate_final;

-- Display only FoodName and Category.
select FoodName, Category from vegetarian_foods_master_list_accurate_final;

-- Display FoodName, Calories, and Protein.
SELECT `FoodName`, `Calories (kcal)`, `Protein (g)` FROM vegetarian_foods_master_list_accurate_final;

-- Show all foods belonging to Fruits.
SELECT * from vegetarian_foods_master_list_accurate_final
where Category = 'Fruits';

-- Show all foods belonging to Leafy Greens.
SELECT * from vegetarian_foods_master_list_accurate_final
where Category = 'Leafy Greens';

-- Show foods having more than 20 g protein.
select * from vegetarian_foods_master_list_accurate_final
where `Protein (g)` > 20;

-- Show foods having less than 50 kcal.
select * from vegetarian_foods_master_list_accurate_final
where `Calories (kcal)` < 50;

-- Show foods having more than 5 g fiber.
select * from vegetarian_foods_master_list_accurate_final
where `Fiber (g)` > 5;

-- Show foods whose names start with B.
select * from vegetarian_foods_master_list_accurate_final
where FoodName like "B%";

-- Show foods whose names contain rice.
select * from vegetarian_foods_master_list_accurate_final
where FoodName like "%rice%";

-- Level 2 – Sorting (8 Questions)
-- Sort foods by calories (ascending).
-- Sort foods by calories (descending).
-- Display the top 10 highest-protein foods.
-- Display the top 10 highest-fiber foods.
-- Display the lowest-calorie foods.
-- Sort first by Category and then by FoodName.
-- Sort by Potassium in descending order.
-- Sort by Vitamin C in descending order.

-- Sort foods by calories (ascending).
select FoodName, `Calories (kcal)`, `Protein (g)` from vegetarian_foods_master_list_accurate_final
order by `Calories (kcal)` asc;

-- Sort foods by calories (descending).
select FoodName, `Calories (kcal)`, `Protein (g)` from vegetarian_foods_master_list_accurate_final
order by `Calories (kcal)` desc;

-- Display the top 10 highest-protein foods.
select FoodName, `Protein (g)` from vegetarian_foods_master_list_accurate_final
order by `Protein (g)` desc
limit 10;

-- Display the top 10 highest-fiber foods.
select FoodName, `Fiber (g)` from vegetarian_foods_master_list_accurate_final
order by `Fiber (g)` desc
limit 10;

-- Display the lowest-calorie foods.
select FoodName, `Calories (kcal)` from vegetarian_foods_master_list_accurate_final
order by `Calories (kcal)` asc
limit 10;

-- Sort first by Category and then by FoodName.
select * from vegetarian_foods_master_list_accurate_final
order by Category, FoodName;

-- Sort by Potassium in descending order.
select * from vegetarian_foods_master_list_accurate_final
order by `Potassium (mg)` desc;

-- Sort by Vitamin C in descending order.
select * from vegetarian_foods_master_list_accurate_final
order by `Vitamin C (mg)` desc;

-- Level 3 – Filtering (10 Questions)
-- Find foods with protein greater than 15 g.
-- Find foods with calories between 100 and 300.
-- Find foods whose category is either Fruits or Vegetables.
-- Find foods with Vitamin C greater than 30 mg.
-- Find foods with Calcium greater than 100 mg.
-- Find foods having Iron greater than 5 mg.
-- Find foods with zero Vitamin B12.
-- Find foods whose names end with "milk".
-- Find foods containing "leaf".
-- Find foods having both Protein > 20 and Fiber > 10.

-- Find foods with protein greater than 15 g.
select FoodName, `Protein (g)` from vegetarian_foods_master_list_accurate_final
where `Protein (g)` > 15
order by `Protein (g)` desc;

-- count
select count(*) from vegetarian_foods_master_list_accurate_final;


-- CREATE TABLE vegetarian_foods_master_list_accurate_final AS
-- SELECT DISTINCT * FROM vegetarian_foods_master_list_accurate_final;

select FoodName from vegetarian_foods_master_list_accurate_final
where `Protein (g)` = 25; 

-- Find foods with calories between 100 and 300.
select FoodName,`Calories (kcal)`  from vegetarian_foods_master_list_accurate_final
where `Calories (kcal)` between 100 and 300;

-- Find foods whose category is either Fruits or Vegetables.
select FoodName, Category from vegetarian_foods_master_list_accurate_final
where Category = 'Fruits' or Category = 'Vegetables';
-- where Category in ('Fruits', 'Vegetables'); 

-- Find foods with Vitamin C greater than 30 mg.
select FoodName, `Vitamin C (mg)` from vegetarian_foods_master_list_accurate_final
where `Vitamin C (mg)` > 30
order by `Vitamin C (mg)` desc;

-- Find foods with Calcium greater than 100 mg.
select FoodName, `Calcium (mg)` from vegetarian_foods_master_list_accurate_final
where `Calcium (mg)` > 100
order by `Calcium (mg)` desc;

-- Find foods having Iron greater than 5 mg.
select FoodName, `Iron (mg)` from vegetarian_foods_master_list_accurate_final
where `Iron (mg)` > 5;

-- Find foods with zero Vitamin B12.
select FoodName, `Vitamin B12 (mcg)` from vegetarian_foods_master_list_accurate_final
where `Vitamin B12 (mcg)` != 0;



-- Find foods whose names end with "milk".
select FoodName from vegetarian_foods_master_list_accurate_final
where FoodName like "%milk%";

-- Find foods containing "leaves".
select FoodName from vegetarian_foods_master_list_accurate_final
where FoodName like "%leaves%";

-- Find foods having both Protein > 20 and Fiber > 10.
select FoodName from vegetarian_foods_master_list_accurate_final
where `Protein (g)` > 20 and `Fiber (g)` > 10;

# shows column names and respective datatypes
DESCRIBE vegetarian_foods_master_list_accurate_final;











































-- Level 4 – Aggregate Functions (10 Questions)
-- How many foods are there?
-- What is the average calorie value?
-- What is the maximum protein value?
-- What is the minimum calorie value?
-- What is the total fiber in the dataset?
-- What is the average Vitamin C?
-- What is the highest calcium value?
-- What is the lowest sodium value?
-- What is the average protein of all foods?
-- What is the average fat?


-- How many foods are there?
select count(distinct(FoodName)) from vegetarian_foods_master_list_accurate_final;

-- What is the average calorie value?
select avg(`Calories (kcal)`) from vegetarian_foods_master_list_accurate_final;

-- What is the maximum protein value?
select FoodName from vegetarian_foods_master_list_accurate_final
where `Protein (g)` = (select max(`Protein (g)`) from vegetarian_foods_master_list_accurate_final);

-- What is the minimum calorie value?
select min(`Calories (kcal)`) from vegetarian_foods_master_list_accurate_final;

-- What is the total fiber in the dataset?
select sum(`Fiber (g)`) from vegetarian_foods_master_list_accurate_final;

-- What is the average Vitamin C?
select avg(`Vitamin C (mg)`) from vegetarian_foods_master_list_accurate_final;

-- What is the highest calcium value?
select FoodName, `Calcium (mg)` from vegetarian_foods_master_list_accurate_final
where `Calcium (mg)` = (select max(`Calcium (mg)`) from vegetarian_foods_master_list_accurate_final);

-- What is the lowest sodium value?
select FoodName, `Sodium (mg)` from vegetarian_foods_master_list_accurate_final
where `Sodium (mg)` = (select min(`Sodium (mg)`) from vegetarian_foods_master_list_accurate_final);

-- What is the average protein of all foods?
select avg(`Protein (g)`) from vegetarian_foods_master_list_accurate_final;

-- What is the average fat?
select avg(`Fat (g)`) from vegetarian_foods_master_list_accurate_final;

-- Level 5 – GROUP BY (12 Questions)
-- Count foods in each category.
-- Average calories by category.
-- Average protein by category.
-- Maximum fiber in each category.
-- Highest Vitamin C in each category.
-- Average calcium by category.
-- Highest potassium by category.
-- Average iron by category.
-- Total protein grouped by category.
-- Average carbohydrates grouped by category.
-- Average fat grouped by category.

-- Count foods in each category.
select count(FoodName) as Category_Wise_Count, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by Category_Wise_Count desc; 

-- Average calories by category.
select avg(`Calories (kcal)`) as avg_cal_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_cal_per_cat desc; 

-- Average protein by category.
select round(avg(`Protein (g)`),2) as avg_protein_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_protein_per_cat desc; 

-- Maximum fiber in each category.
select max(`Fiber (g)`) as max_fib_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by max_fib_per_cat desc; 

-- Highest Vitamin C in each category.
select max(`Vitamin C (mg)`) as high_vitC_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by high_vitC_per_cat desc; 

-- Average calcium by category.
select round(avg(`Calcium (mg)`),2) as avg_cal_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_cal_per_cat desc; 

-- Highest potassium by category.
select max(`Potassium (mg)`) as high_pot_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by high_pot_per_cat desc; 

-- Average iron by category.
select round(avg(`Iron (mg)`),2) as avg_iron_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_iron_per_cat desc; 

-- Total protein grouped by category.
select round(sum(`Protein (g)`),2) as total_protein_per_Cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by total_protein_per_cat desc;

-- Average carbohydrates grouped by category.
select round(avg(`Carbohydrates (g)`),2) as avg_carb_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_carb_per_cat desc;

-- Average fat grouped by category.
select round(avg(`Fat (g)`),2) as avg_fat_per_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
order by avg_fat_per_cat desc;

-- Show categories having more than 20 foods. 
select count(FoodName) as cnt_by_cat, Category from vegetarian_foods_master_list_accurate_final
group by Category
having cnt_by_cat > 20
order by cnt_by_cat desc;

-- Find foods whose protein is greater than the average protein of all foods. # avg protein is 7
select FoodName, `Protein (g)` from vegetarian_foods_master_list_accurate_final
where `Protein (g)` > (select avg(`Protein (g)`) from vegetarian_foods_master_list_accurate_final)
order by `Protein (g)` desc;

-- Find foods whose calories are below their category's average calories.
select FoodName, Category, `Calories (kcal)` from vegetarian_foods_master_list_accurate_final f1
where `Calories (kcal)` < (select avg(`Calories (kcal)`) from vegetarian_foods_master_list_accurate_final f2
							where f2.Category = f1.Category
							);
                          
-- Classify foods as High, Medium, or Low Protein using CASE WHEN.
-- Concept: CASE
SELECT FoodName, `Protein (g)`, 
	CASE 
        WHEN  `Protein (g)` > 20 THEN 'High Protein'
        WHEN `Protein (g)` BETWEEN 10 AND 20 THEN 'Medium Protein'
        ELSE 'Low Protein'
    END AS Protein_level
FROM vegetarian_foods_master_list_accurate_final;

-- Display the top 3 highest-protein foods in each category.
-- Concept: ROW_NUMBER() / RANK() Window Function

with ranked_foods as(
select FoodName,
		`Protein (g)`,
        Category,
        row_number() over (partition by Category order by `Protein (g)` desc) as cat_wise_protein_rn
        from vegetarian_foods_master_list_accurate_final)
select FoodName, Category, `Protein (g)`, cat_wise_protein_rn from ranked_foods
where cat_wise_protein_rn <=3;

-- Rank all foods by fiber content from highest to lowest.
-- Concept: RANK() or DENSE_RANK()
select FoodName, `Fiber (g)`,
	dense_rank() over (order by `Fiber (g)` desc) as fiber_ranks
    from vegetarian_foods_master_list_accurate_final;
    
-- Find the food with the highest combined Protein + Fiber score.
-- Concept: Calculated columns, ORDER BY
select FoodName, (`Protein (g)` + `Fiber (g)`) as protn_fib_score from vegetarian_foods_master_list_accurate_final
order by protn_fib_score desc;

-- create a nutrition score
-- (Protein × 2) + Fiber + Vitamin C/10 − Fat
select FoodName, round(`Protein (g)`*2 + `Fiber (g)` + (`Vitamin C (mg)`/10)- `Fat (g)`) as nutrition_score 
from vegetarian_foods_master_list_accurate_final
order by nutrition_score desc;

-- Find foods that are above their category average in both Protein and Fiber.
-- Concept: Correlated subqueries, multiple conditions
select FoodName, Category, `Protein (g)`, `Fiber (g)` from vegetarian_foods_master_list_accurate_final as f1
where `Protein (g)` > (
select avg(`Protein (g)`) from vegetarian_foods_master_list_accurate_final as f2
where f2.Category = f1.Category)
and
`Fiber (g)` > (
select avg(`Fiber (g)`) from vegetarian_foods_master_list_accurate_final as f3
where f3.Category = f1.Category);

    


        
        
		


                            




































































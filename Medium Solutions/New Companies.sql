# Author: AndriiSurname
SELECT                           
                           Company.company_code,
                           Company.founder, 
/*lead_manager_#*/         COUNT(DISTINCT Lead_Manager.lead_manager_code) AS total_lead_managers,
/*senior_manager_#*/       COUNT(DISTINCT Senior_Manager.senior_manager_code) AS total_senior_managers,
/*manager_#*/              COUNT(DISTINCT Manager.manager_code)AS total_managers, 
/*employee_#*/             COUNT(DISTINCT Employee.employee_code)AS total_employees
FROM Company 
          LEFT JOIN 
                            Lead_Manager ON Company.company_code = Lead_Manager.company_code
          LEFT JOIN 
                            Senior_Manager ON Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code
          LEFT JOIN 
                            Manager ON Senior_Manager.senior_manager_code = Manager.senior_manager_code
          LEFT JOIN 
                            Employee ON Manager.manager_code = Employee.manager_code
GROUP BY Company.company_code, Company.founder
order by Company.company_code;

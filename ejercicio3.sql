Create or Replace function Get_salary(P_Emp_id Number) Return Number As L_salary Number;
Begin
Select Salary into L_salary from Employees where employee_id = P_Emp_Id; End Get_salary;

 
--no compilara correctamente.
--falta la seccion de declaracion "L_salary"



Create or Replace function Get_salary(P_Emp_id Number) Return Number As 
  L_salary Number;
Begin
  Select Salary into L_salary from Employees where employee_id = P_Emp_Id; 
  Return L_salary; -- Agregado
End Get_salary;


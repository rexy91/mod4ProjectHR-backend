class EmployeesController < ApplicationController
    def create 
        
        @employee = Employee.create(create_employee_params)
        if @employee.valid?
            render json: @employee
        end
    end

    private

    def create_employee_params 
        params.permit(:name, :email, :date_of_birth, :company_id)
    end
end

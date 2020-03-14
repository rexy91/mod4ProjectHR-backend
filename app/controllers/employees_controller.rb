class EmployeesController < ApplicationController
    def create 
        
        @employee = Employee.create(create_employee_params)
        if @employee.valid?
            render json: @employee
        end
    end

    def destroy
        # byebug
        @employee = Employee.find_by(id: params[:id])
        @employee.destroy
        render json: {message: 'employee destroyed'}
    end

    private

    def create_employee_params 
        params.permit(:name, :email, :date_of_birth, :company_id)
    end
end

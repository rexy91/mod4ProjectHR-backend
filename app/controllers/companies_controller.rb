class CompaniesController < ApplicationController

    def index 
        @companies = Company.all 
        render json: @companies, include: 'employees'

    end

    def show 
        @company = Company.find_by(id: params[:id])
        render json: @company
    end

    def create 
        # byebug
        @company = Company.create(create_company_params)
        if @company.valid?
            render json: @company
        end
    end

    def update 
        # byebug
        @company = Company.find_by(id: params[:id])
        @company.update(schedule: params[:schedule])
        render json: @company
    end

    def destroy
        byebug
    end

    private 

    def create_company_params
        params.permit(:name, :manager_id)
    end
end

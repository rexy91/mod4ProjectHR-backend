class CompaniesController < ApplicationController

    def index 
        @companies = Company.all 
        render json: @companies, include: 'employees'

    end

end

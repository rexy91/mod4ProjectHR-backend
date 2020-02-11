class ManagersController < ApplicationController
    
    before_action :authorized, only: [:persist]

    def index 
        # Index page will show all managers, as well as the associated objects.
        @managers = Manager.all

        render json: @managers, include: 'companies'
    end

    def show
        @manager = Manager.find_by(id: params[:id])
        render json: {manager: ManagerSerializer.new(@manager)}
    end

    def login 
        # byebug 
        @manager= Manager.find_by(username: params[:username])
      
        if @manager && @manager.authenticate(params[:password])
          wristband = encode_token({user_id: @manager.id})
          render json: {user: ManagerSerializer.new(@manager), token: wristband}
        else
          render json: {error: "Invalid username or password"}
          
        end
    end

    def create
        
        @manager = Manager.create(new_manager_params)
        # byebug 
        # @manager.errors.full_messages
        if @manager.valid?
            wristband = encode_token({user_id: @manager.id})
            render json: {user: ManagerSerializer.new(@manager), token: wristband}
        else 
            render json: {errors: @manager.errors.full_messages}
        end
    end


    def persist
        wristband = encode_token({user_id: @user.id})
        render json: {user: ManagerSerializer.new(@user), token: wristband}
    end

    private 

    def new_manager_params
        params.permit(:username, :firstName, :lastName, :email, :password)
    end

end

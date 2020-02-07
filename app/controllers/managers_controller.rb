class ManagersController < ApplicationController
    
    before_action :authorized, only: [:persist]

    def show
        @manager = Manager.find_by(id: params[:id])
        render json: {manager: ManagerSerializer.new(@manager)}
    end

    def login 
        @manager= Manager.find_by(username: params[:username])
      
        if @manager && @manager.authenticate(params[:password])
          wristband = encode_token({user_id: @manager.id})
          render json: {user: ManagerSerializer.new(@manager), token: wristband}
        else
          render json: {error: "Invalid username or password"}
          
        end
     
    end

    def persist
  
        wristband = encode_token({user_id: @user.id})
        render json: {user: ManagerSerializer.new(@user), token: wristband}
    end

end

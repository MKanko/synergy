class SynergyAdminsController < ApplicationController

    def new 
        @synergy_admin = Synergy_admin.new 
    end 

    def create
        @synergy_admin = Synergy_admin.new(synergy_admin_params)
        return redirect_to new_synergy_admin_path unless @synergy_admin.save
        session[:synergy_admin_id] = @synergy_admin.id 
        redirect_to synergy_admin_path(@synergy_admin)
    end 

    def show 
        if !logged_in?
            redirect_to new_synergy_admin_path 
        else
            @synergy_admin = Synergy_admin.find(params[:id])
        end 
    end 

    def destroy
        session.delete :username
        redirect_to new_synergy_admin_path 
    end
    
    private 

    def synergy_admin_params
        params.require(:synergy_admin).permit(:username, :email, :password)
    end 

end

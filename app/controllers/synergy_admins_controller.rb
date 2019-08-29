class SynergyAdminsController < ApplicationController

    def new
        @synergy_admin = Synergy_admin.new 
    end 

    def create
        @synergy_admin = Synergy_admin.new(synergy_admin_params)
        return redirect_to new_synergy_admin_path unless @synergy_admin.save
        redirect_to synergy_admin_path(@synergy_admin)
    end 

    def destroy
    end
    
    private 

    def synergy_admin_params
        params.require(:synergy_admin).permit(:username, :email, :password)
    end 

end

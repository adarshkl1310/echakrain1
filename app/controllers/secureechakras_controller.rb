class SecureechakrasController < ApplicationController
before_action :find_mask, only: [:show, :edit, :update, :destroy]

def index   
 @secureechakra = Secureechakra.all

end

def create
 @secureechakra = Secureechakra.new(secureechakra_params)
    if @secureechakra.save
      flash[:success] = "Welcome to the Sample App!"

       redirect_to homes_path
    end
end


def destroy
	     @secureechakra = Secureechakra.find(params[:id])

	@secureechakra.destroy
	redirect_to secureechakras_path
end	



private

def secureechakra_params 
			
	params.require(:secureechakra).permit(:name,:phone_number,:email,:message)

end

def find_mask
    	 
     @secureechakra = Secureechakra.find(params[:id])
 
end


end

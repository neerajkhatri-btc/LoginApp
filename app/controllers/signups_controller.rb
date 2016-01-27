class SignupsController < ApplicationController
  def index
  end

 def create
 	puts "create---------"
   # render "index"

  if 	User.create(:email=>params[:email],:password=>params[:password])
     	@mes="Successfull signup #{params[:email]}"
  else
 	@mes="error"
 	end

 end

   def user_params
  
#      params.require.permit(:email, :password)
   end


end

class LoginsController < ApplicationController
  def index
  @mes=""
  end
  
  def check
#   render "index"
  puts "********* #{params[:email]}"
  if User.find_by(:email => params[:email], :password =>params[:password])
  	@mes="login suucessfull"
  else
  	@mes="login not valid try again"
  	render "index"
  end



  end

end

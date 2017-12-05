class WelcomeController < ApplicationController

  @api = 'http://json-server.devpointlabs.com/api/v1/users'

  def index
    @user = HTTParty.get('http://json-server.devpointlabs.com/api/v1/users')
  end

  def create_user
    @user = 'users'
  end

  def post_user
    first = params[:users][:first_name]
    last = params[:users][:last_name]
    number = params[:users][:phone_number]
    HTTParty.post('http://json-server.devpointlabs.com/api/v1/users', body: {'user[first_name]': first, 'user[last_name]': last, 'user[phone_number]': number})
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end


end

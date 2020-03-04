# frozen_string_literal: true

class SessionsController < ApplicationController
  layout 'sessions'

  def index; end

  def login
    executive = SaleExecutive.find_by email: login_params[:email]
    unless executive.nil?
      if executive.password == Digest::MD5.hexdigest(login_params[:password])
        puts 'caca'
        current_user executive
        redirect_to clients_path
      end
    end
  end

  def logout
    session[:current_user] = nil
    redirect_to root_path
  end

  private

  def login_params
    params.require(:session).permit(:email, :password)
  end
end

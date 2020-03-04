class ApplicationController < ActionController::Base
  # Guarda al usuario que inicio session
  def current_user(usuario)
    session[:current_user] = usuario
  end

  # Redirecciona al login si no existe una session iniciada
  # se debe llamar en los controladores usando callbacks
  def authenticate_user!
    redirect_to root_path unless logged_in?
  end

  private

  # Verifica si existe un usuario guardado
  def logged_in?
    !session[:current_user].nil?
  end
end

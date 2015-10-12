class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # devise_token_auth_group :member, contains: [:user]
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_filter :authenticate_user

  def authenticate_user
    set_user_by_token
  end
end

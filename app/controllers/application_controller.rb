class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :logged_in_user, :logged_in?
  append_after_filter do |controller| controller.add_gosquared_identify_method logged_in_user
  end

  def gosquared_user_properties
   GosquaredRails.configure.custom_properties = {id: '1', email: 'russell@gmail.com', name: 'russell vaughan',
   first_name: 'russell', last_name: 'vaughan',
   username: logged_in_user.username,
   phone: '6047877820',
   created_at: '03/11/1982',
   favourite_team: 'tottenham',
   monthly_mrr: 2 }
  end

  def logged_in_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!logged_in_user
  end

  protected

  def authenticate_user!
    redirect_to root_path unless logged_in?
  end
end


class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @services = Service.all.reverse.first(3)
  end

  def profile
    @user = User.find(params[:id])
    @user = current_user

    @requested_services = current_user.requested_services
    @sorted_services =  current_user.requested_services.sort_by { |e| e[:start_date] }
  end
end

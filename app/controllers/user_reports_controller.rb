class UserReportsController < ApplicationController

  def index
    @user_report = UserReport.new(params[:user_report])
    @assets = @user_report.assets.page(params[:page])
  end
end

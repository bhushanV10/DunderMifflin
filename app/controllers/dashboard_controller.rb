class DashboardController < ApplicationController

  def index
    @companies = Company.all_companies
    @companies_by_role = Company.company_roles_count
    @users_by_role = User.user_roles_count
  end

  def filter_data
    if params[:filter_type] == Company.name
      @companies = Company.filter_by_company_role(params[:role])
    elsif params[:filter_type] == User.name
      @companies = Company.filter_by_user_role(params[:role])
    else
      @companies = Company.all_companies
    end
  end
end

class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = 'Company added!'
      redirect_to companies_path
    else
      flash[:danger] = @company.errors.full_messages.join(", ")
      redirect_to new_company_path
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    if @company.destroyed?
      flash[:success] = 'Company deleted!'
    else
      flash[:danger] = 'Failed to delete company!'
    end
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :role)
  end
end

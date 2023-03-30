class CompaniesController < ApplicationController
  before_action :authenticate_user!, except: :contact_us

  def update
    if @company.update(company_params)
      redirect_to root_url, notice: "Data updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(%i[
      phone_number
      facebook_link
      instagram_link
      twitter_link
      linkedin_link
      first_mail
      second_mail
      primary_address
      secondary_address
    ])
  end
end

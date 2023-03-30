class ApplicationController < ActionController::Base
  before_action :set_company

  private

  def set_company
    @company = Company.last || Company.new(
      phone_number: "+60 11-2340 0748",
      facebook_link: "https://www.facebook.com/globalaircondservice",
      instagram_link: "https://www.instagram.com/aircondglobal/",
      twitter_link: "https://twitter.com/AircondGlobal?s=08",
      linkedin_link: "https://www.linkedin.com/in/global-aircon-a99187201",
      first_mail: "info@globalaircond.com",
      second_mail: "contact-us@globalaircond.com",
      primary_address: "",
      secondary_address: ""
    )
  end
end

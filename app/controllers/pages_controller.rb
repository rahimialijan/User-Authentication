class PagesController < ApplicationController
  def home
    @application = Doorkeeper::Application.find_by(name: "ios client")

    if @application
      @application_info = {
        name: @application.name,
        client_id: @application.uid,
        client_secret: @application.secret,
      }
    else
      # Handle the case where no application is found with the specified name
      flash[:alert] = "Application 'web client' not found."
      @application_info = {} # Set to an empty hash or any default value you prefer
    end
  end
end

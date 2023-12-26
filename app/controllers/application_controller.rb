class ApplicationController < ActionController::Base

  def index
    render html: "This is Home page"
  end

end

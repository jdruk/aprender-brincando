class HomeController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def about
  end
end

class HomeController < ApplicationController
	layout 'teamvision', except: :index

	def index
		@contact = Contact.new
	end

	def administrator

	end

	def normal_user
	end
end


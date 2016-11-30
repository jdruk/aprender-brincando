class HomeController < ApplicationController
	layout 'teamvision', only: :administrator
	layout 'parents', only: :normal_user

	def index
		@contact = Contact.new
	end

	def administrator

	end

	def normal_user
	end
end


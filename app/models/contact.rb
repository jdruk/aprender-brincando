class Contact < ActiveRecord::Base
	enum status: [:nao_respondido, :respondido]

	def self.no_read
		Contact.where( status: 0).count
	end
end

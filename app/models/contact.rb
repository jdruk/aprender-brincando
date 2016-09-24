class Contact < ActiveRecord::Base
	enum status: [:nao_respondido, :respondido]
end

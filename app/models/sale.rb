class Sale < ApplicationRecord
	before_action :generate_guid
	belongs_to :article

	private
		def generate_guid
			self.guid = SecureRandom.uuid()
		end 
end

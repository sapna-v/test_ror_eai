class User < ApplicationRecord
	has_many :shows, dependent: :destroy
end

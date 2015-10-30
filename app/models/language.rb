class Language < ActiveRecord::Base
	has_many :votes, dependent: :destroy
end

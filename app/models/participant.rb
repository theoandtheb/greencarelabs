class Participant < ApplicationRecord
	belongs_to :report
	has_many :sessions
end

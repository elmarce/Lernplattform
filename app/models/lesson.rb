class Lesson < ActiveRecord::Base
	validates :thema, presence: true
	validates :content, presence: true
	validates :autor, presence: true
end

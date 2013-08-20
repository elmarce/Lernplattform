class Lesson < ActiveRecord::Base
	has_many :tests, dependent: :destroy
	validates :thema, presence: true
	validates :content, presence: true
	validates :autor, presence: true
end

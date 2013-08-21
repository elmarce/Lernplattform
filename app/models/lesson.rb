class Lesson < ActiveRecord::Base
	has_many :tests, dependent: :destroy
	has_many :questions, through: :tests
	validates :thema, presence: true
	validates :content, presence: true
	validates :autor, presence: true
end

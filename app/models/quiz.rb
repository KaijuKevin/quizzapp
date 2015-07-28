class Quiz < ActiveRecord::Base
	has_many :questions
	validates :name, presence: true
	accepts_nested_attributes_for :questions, allow_destroy: true
end
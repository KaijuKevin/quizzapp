class Question < ActiveRecord::Base
	belongs_to :quiz
	has_many :answers
	validates :title, presence: true
	accepts_nested_attributes_for :answers, allow_destroy: true
end
class AnswersController < ApplicationController
	def create

	end

	def update
	end

	private

	def answer_params
		params.require(:answer).permit(:body)
	end
end
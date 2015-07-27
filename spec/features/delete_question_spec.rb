require 'rails_helper'

describe "the process of deleting a question" do 
	it "will successfully delete a question" do
		question = FactoryGirl.create(:question)
		quiz = question.quiz
		visit quiz_question_path(quiz, question)
		click_link "Delete"

		expect(page).to have_content("Question successfully deleted")
	end
end
require 'rails_helper' 

describe "the proccess of editing a question" do
	it "will successfully edit the question" do
		question = FactoryGirl.create(:question)
		quiz = question.quiz
		visit edit_quiz_question_path(quiz, question)
		fill_in "Title", with: "What is the name of the second president of the USA?"
		click_button "Submit"

		expect(page).to have_content("Question successfully edited")
	end
end
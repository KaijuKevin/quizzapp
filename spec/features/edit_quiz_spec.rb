require 'rails_helper'

describe "the process of editing a quiz" do
	it "will successfully change the name of a quiz" do
		quiz = FactoryGirl.create(:quiz) 
		visit quizzes_path
		click_link quiz.name
		fill_in "Name", with: "History quiz"
		click_button "Submit"

		expect(page).to have_content("Quiz successfully edited")

	end
end
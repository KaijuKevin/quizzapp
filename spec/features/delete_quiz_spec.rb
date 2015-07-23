require 'rails_helper'

describe "the process of deleting a quiz" do
	it "will successfully delete a quiz" do
		quiz = FactoryGirl.create(:quiz)
		visit quizzes_path
		click_link "Delete"

		expect(page).to have_content("Quiz successfully deleted")
	end
end
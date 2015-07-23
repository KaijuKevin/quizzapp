require 'rails_helper'

describe "the process of creating a quiz" do 
	it "will create a new quiz" do
		visit quizzes_path
		click_link "Add a Quiz"
		fill_in "Name", with: "Math Quiz"
		click_button "Submit"
		expect(page).to have_content("Quiz successfully created")
	end
end
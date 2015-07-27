require 'rails_helper'

describe "the process of adding a question" do 
	it "will add a question to a quiz" do
		quiz = FactoryGirl.create(:quiz)
		visit quiz_path(quiz)
		click_link "Add question"
		fill_in "Title", with: "Who was the first president of the USA?"
		click_button "Submit"

		expect(page).to have_content("Question successfully added")
	end
end
FactoryGirl.define do
	factory(:quiz) do
		name("History quiz")
	end

	factory(:question) do
		title("Who was the first president of the USA?")
		quiz
	end
end
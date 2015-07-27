require 'rails_helper'

describe Question do
	it { should belong_to :quiz }	
	it { should validate_presence_of :title}
end
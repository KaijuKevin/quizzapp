require 'rails_helper'

describe Quiz do
	it { should validate_presence_of :name }
end
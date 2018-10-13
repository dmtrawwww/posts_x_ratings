require 'rails_helper'

RSpec.describe Rating, type: :model do
  # Association test
	it { should belong_to(:post) }
  
  # Validation tests
  it { should validate_presence_of(:rating) }
end

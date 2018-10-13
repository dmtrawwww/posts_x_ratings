require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
	it { should have_many(:posts) }
  
  # Validation tests
  it { should validate_presence_of(:login) }
end

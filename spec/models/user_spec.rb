require 'rails_helper'

RSpec.describe User, type: :model do
	let(:user) { FactoryBot.build(:user) }
	subject { user }

	context 'validations' do
		it { should validate_uniqueness_of(:username) }
		it { should validate_presence_of(:username) }
		it { should be_valid }
	end

	context 'associations' do
		it { should have_many(:accounts) }
	end
end

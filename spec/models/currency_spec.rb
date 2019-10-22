require 'rails_helper'

RSpec.describe Currency, type: :model do
	let(:currency) { FactoryBot.build(:currency) }
	subject { currency }

	context 'validations' do
		it { should validate_presence_of(:code) }
		it { should validate_uniqueness_of(:code) }
		it { should validate_presence_of(:value) }
		it { should be_valid }
	end

	context 'associations' do
		it { should have_many(:transactions) }
	end
end

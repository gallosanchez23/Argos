require 'rails_helper'

RSpec.describe Transaction, type: :model do
	let(:transaction) { FactoryBot.build(:transaction) }
	subject { transaction }

	context 'validations' do
		it { should validate_presence_of(:type) }
		it { should validate_presence_of(:datetime) }
		it { should validate_presence_of(:quantity) }
		it { should be_valid }
	end

	context 'associations' do
		it { should belong_to(:user) }
		it { should belong_to(:account) }
		it { should belong_to(:currency) }
	end

	context 'definitions' do
		it { should define_enum_for(:type).with([:payment, :purchase, :loan]) }
	end
end

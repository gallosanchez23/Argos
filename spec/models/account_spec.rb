require 'rails_helper'

RSpec.describe Account, type: :model do
	let(:account) { FactoryBot.build(:account) }
	subject { account }

	context 'validations' do
		it { should validate_presence_of(:bank) }
		it { should validate_presence_of(:type) }
		it { should validate_presence_of(:balance) }
		it { should be_valid }
	end

	context 'associations' do
		it { should has_many(:cards) }
		it { should has_many(:transactions) }
		it { should belong_to(:user) }
	end

	context 'definitions' do
		it { should define_enum_for(:type).with([:debit, :credit, :cash]) }
	end
end

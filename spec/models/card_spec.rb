require 'rails_helper'

RSpec.describe Card, type: :model do
	let(:card) { FactoryBot.build(:card) }
	subject { card }

	context 'validations' do
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:stamp) }
		it { should validate_presence_of(:status) }
		it { should be_valid }
	end

	context 'associations' do
		it { should belong_to(:account) }
	end

	context 'definitions' do
		it { should define_enum_for(:status).with([:active, :expired]) }
	end
end

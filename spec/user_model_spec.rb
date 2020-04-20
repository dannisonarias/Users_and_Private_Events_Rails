require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.new(name: 'danny')
    @user1.save
  end

  context 'Create new user' do
    it 'checks for user validity with correct name' do
      expect(@user1.valid?).to eq(true)
    end

    it 'checks for user validity on empty name' do
      @user1 = User.new(name: '')
      expect(@user1.valid?).to eq(false)
    end
  end
end

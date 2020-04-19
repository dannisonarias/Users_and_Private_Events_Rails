require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe Registration, type: :model do
  before(:each) do
    @user1 = User.new(name: 'joe')
    @user1.save

    @user2 = User.new(name: 'nikki')
    @user2.save

    @event1 = Event.new(name:"Wedding",description: 'wedding for joe and stephany',creator_id: @user1.id, date:"june 25 2020")
    @event1.save
  end

  context 'Create new event' do
    
    it 'checks for event validity with all attributes' do
      expect(@event1.valid?).to eq(true)
    end

    it 'checks for registration validity with false creator_id' do
      @event1.creator_id = 'f'
      expect(@event1.valid?).to eq(false)
    end

  end

end
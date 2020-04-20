require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe Registration, type: :model do
  before(:each) do
    @user1 = User.new(name: 'joe')
    @user1.save

    @user2 = User.new(name: 'nikki')
    @user2.save

    @event1 = Event.new(name: 'BBQ', description: 'test', creator_id: @user1.id, date: 'june 25 2020')
    @event1.save

    @reg1 = Registration.new(event_id: 1, user_id: 2)
    @reg1.save
  end

  context 'Create new registration' do
    it 'expects for registration validity with user_id and event_id' do
      @reg1.user_id = 2
      @reg1.event_id = 1
      expect(@reg1.valid?).to eq(true)
    end

    it 'expects for registration invalidity with event_id empty' do
      @reg1.user_id = 2
      @reg1.event_id = ''
      expect(@reg1.valid?).to eq(false)
    end

    it 'expects for registration invalidity with user_id empty' do
      @reg1.user_id = ''
      @reg1.event_id = 1
      expect(@reg1.valid?).to eq(false)
    end

    it 'expects association between users->events to not be nil' do
      expect(@user1.events.first.attendees.first.name.class).to be_truthy
    end

    it 'expects association between events->attendees to not be nil' do
      expect(@event1.attendees.first.name.class).to be_truthy
    end
  end
end

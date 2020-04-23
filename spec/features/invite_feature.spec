require_relative '../rails_helper'
require_relative '../spec_helper'

RSpec.describe Registration, type: :model do
  describe 'the invite process', type: :feature do
    before :each do
      visit new_user_path
    end

    it 'create user' do
      visit new_user_path
      fill_in 'user_name', with: 'nikki'
      click_button(class: 'createbtn')
      expect(page).to have_content 'success'
    end
  end
end

require './app.rb'
require './spec/features/web_helpers.rb'


feature 'Enter name' do
    scenario 'Registers user name' do
      sign_in_and_play
      expect(page).to have_content 'Dave'
    end
  end
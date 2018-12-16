require './app.rb'
require './spec/features/web_helpers.rb'

feature 'Playing RPS' do
    scenario 'Choose one of three options' do
      sign_in_and_play
      expect(page).to have_content 'Please select one option from below then click play'
    end
  end
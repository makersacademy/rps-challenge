require './spec/spec_helper.rb'
require './spec/features/web_helpers.rb'

feature 'Enter names' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game, Arya!'
  end
end
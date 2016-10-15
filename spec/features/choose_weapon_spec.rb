require 'spec_helper'

feature 'Choose weapon' do
  scenario 'tells you what you chose' do
    register_and_play
    choose('Rock')
    click_button "Let's do this!"
    expect(page).to have_content 'You chose the Rock!'
  end

end

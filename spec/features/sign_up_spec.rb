# require 'spec_helper'

feature 'when user signs up for the game' do
  scenario 'expects player to fill in name in a form and displays name after submitted' do
    register
    expect(page).to have_content 'Alex, You are registered to play'
    # save_and_open_page
  end
end

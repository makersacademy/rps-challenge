require 'spec_helper'

feature 'playing the game' do

  scenario 'click_play' do
    enter_name_and_choice
    click_button 'PLAY'
    expect(page).to have_content('The result is')
  end
end

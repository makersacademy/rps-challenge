require 'spec_helper'

feature 'Game over' do
  scenario 'player does not want to play anymore' do
    sign_in_and_play
    choose("weapon", option: "Rock")
    click_button('Submit')
    click_link('No')
    expect(page).to have_content 'Game over'
  end
end

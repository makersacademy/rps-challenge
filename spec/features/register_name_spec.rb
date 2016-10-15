require 'spec_helper'

feature 'Register name' do
  scenario 'Player can register and see name before playing' do
    visit('/')
    fill_in(:player_1, with: 'Batman')
    click_button('Submit')
    expect(page).to have_content "Hello Batman!"
  end
end

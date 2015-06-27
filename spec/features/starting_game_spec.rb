require 'spec_helper'

feature 'starting a game' do

  scenario 'the welcome page allows a player to set their name' do
    visit '/'
    fill_in('name', with: 'Nicola')
    click_button('Begin Game')
    expect(page).to have_content 'Nicola'
  end

end

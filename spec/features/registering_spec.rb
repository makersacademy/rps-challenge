require 'spec_helper'

feature 'Registering for the game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    fill_in('player_name', with: 'Rebecca')
    click_button('Submit')
    expect(page).to have_content('Hi there Rebecca!')
  end
end
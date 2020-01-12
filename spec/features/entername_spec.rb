require 'spec_helper'

feature 'Enter name' do

  scenario 'subitting name' do
    visit('/')
    fill_in :player_name, with: 'Ross'
    click_button('Submit')
    expect(page).to have_content 'Ross'
  end
end

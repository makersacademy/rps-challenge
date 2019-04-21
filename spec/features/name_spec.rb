require 'spec_helper'

feature 'enter name, see name' do
  scenario 'submit name, store and redirect to page containing name' do
    visit('/')
    fill_in('player_1_name', with: 'Marcus')
    click_button('Submit')
    expect(page).to have_content('Marcus vs Computer')
  end
end

require 'spec_helper'

feature 'Enter name' do
  scenario 'Submitting name' do
    visit('/')
    fill_in :player_name, with: 'Jenny'
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content 'Jenny'
  end
end

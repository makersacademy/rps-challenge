require_relative '../spec_helper'

feature 'register names' do
  scenario 'registers the name Andy' do
    visit '/'
    fill_in :player_name, with: 'Andy'
    click_button "Submit"
    expect(page).to have_content "Welcome Andy"
  end

  scenario 'registers the name NotAndy' do
    visit '/'
    fill_in :player_name, with: 'NotAndy'
    click_button "Submit"
    expect(page).to have_content "Welcome NotAndy"
  end
end

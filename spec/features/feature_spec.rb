require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    visit("/")
    fill_in 'player_1_name', with: 'Olga'
    fill_in 'player_2_name', with: 'Pug'
    click_on'Submit'
    expect(page).to have_content "points"
  end
end

# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Choose your weapon'
  end
end
# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Player 1'
  end
end
# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../app'

Capybara.app = RPS

feature 'entering player name' do
  scenario 'submitting name' do
    visit('/')
    fill_in('player_name', with: 'Elvis')
    click_button('Submit')
    expect(page).to have_content('Welcome Elvis!', exact: true)
  end
end

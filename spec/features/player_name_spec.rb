# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RPS

feature 'entering player name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content('Welcome Elvis!')
  end
end

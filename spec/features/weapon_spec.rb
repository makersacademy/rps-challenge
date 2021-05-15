# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RPS

feature 'player weapons' do
  it 'player presented with weapon choices' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

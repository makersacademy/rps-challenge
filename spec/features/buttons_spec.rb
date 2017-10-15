require 'capybara/rspec'
require_relative '../../lib/app'
require_relative 'spec_helper'

feature 'Buttons for choosing weapon' do
  before { sign_in_and_play }
  context 'player chooses various buttons' do
    scenario 'rock button' do
      expect(page).to have_button('Rock')
    end

    scenario 'paper button' do
      expect(page).to have_button('Paper')
    end

    scenario 'scissors button' do
      expect(page).to have_button('Scissors')
    end
  end
end

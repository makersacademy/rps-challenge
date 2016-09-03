require 'spec_helper'
require_relative '../../app'

feature 'choose_weapon' do
  scenario 'player can choose his/her weapon' do
    sign_in_and_play
    expect(page).to have_content("You have chosen rock")
  end
end

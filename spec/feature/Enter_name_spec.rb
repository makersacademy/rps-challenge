require './app.rb'
require 'spec_helper.rb'
require_relative 'web_helpers'

feature 'Player can enter their name' do
  scenario 'player enters the name' do
    sign_in_start_game
    expect(page).to have_content("Maria")
  end

  scenario 'display rps options' do
    sign_in_start_game
    expect(page).to have_field("rps")
  end
end

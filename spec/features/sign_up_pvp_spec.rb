require 'spec_helper'

describe 'index page' do

  scenario 'home screen displays welcome message' do
    sign_in_pvp
    expect(page).to have_content 'Choose your weapon, Tom!'
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
    expect(page).to have_button 'lizard'
    expect(page).to have_button 'Spock'
  end
end

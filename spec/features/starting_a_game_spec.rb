require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering for game' do
    asked_for_name
    click_submit_name_button
  end

  def asked_for_name
    visit '/'
    expect(page).to have_content "What's your name"
  end

  def click_submit_name_button
    visit '/'
    name = "Katya"
    click_button 'Submit'
    expect(page).to have_content "choose your weapon"
  end

  scenario 'No name entered' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content "Player 1"
  end

end
require 'spec_helper'

feature 'Starting a new game' do

  scenario 'asks for your name' do
    start_new_game
    expect(page).to have_content 'Great! Hi there Simon!'
  end

  scenario 'can make a selection' do
    start_new_game
    select 'Rock', from: 'selections'
    click_button 'Submit'
    expect(page).to have_content 'You picked rock'
  end

  def start_new_game
    visit '/'
    fill_in 'name', with: 'Simon'
    click_button 'Submit'
  end


end
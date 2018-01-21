require 'spec_helper'

feature 'playing rps' do
  before do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
  end

  scenario 'see the options of the game' do
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'choose a shape' do
    click_button 'ROCK'
    expect(page).to have_content 'You selected Rock!'
  end

end

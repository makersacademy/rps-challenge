require 'spec_helper'

feature 'playing rps' do
  before do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
  end

  scenario 'see the options of the game' do
    expect(page).to have_content 'ROCK'
    expect(page).to have_content 'PAPER'
    expect(page).to have_content 'SCISSORS'
  end
end

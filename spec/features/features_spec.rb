require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'RPS'
  end

  scenario 'player can enter name' do
    log_info
    expect(page).to have_content('Choose an option, Claudia')
  end
end

RSpec.feature 'Testing result' do
  scenario 'player can choose rock' do
    log_info
    click_button 'Rock'
    expect(page).to have_content 'Result'
  end

  scenario 'player can choose paper' do
    log_info
    click_button 'Paper'
    expect(page).to have_content 'Result'
  end

  scenario 'player can choose scissors' do
    log_info
    click_button 'Scissors'
    expect(page).to have_content 'Result'
  end
end

RSpec.feature 'play again' do
  scenario 'player can play again' do
    log_info
    click_button 'Scissors'
    expect(page).to have_button("Play again")
  end
end

require 'spec_helper'

feature 'Select move' do
  scenario 'player selects rock' do
    enter_name_click_submit
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK!'
  end

  scenario 'player selects scissors' do
    enter_name_click_submit
    click_button 'SCISSORS'
    expect(page).to have_content 'You chose SCISSORS!'
  end

  scenario 'player selects paper' do
    enter_name_click_submit
    click_button 'PAPER'
    expect(page).to have_content 'You chose PAPER!'
  end
end

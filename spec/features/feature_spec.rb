require 'spec_helper'

feature 'Testing infrastucture' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Sissors!'
  end

  scenario 'The player can enter their name and see it in lights' do
    sign_in_and_play
    expect(page).to have_text 'Contender: David'
  end

  scenario 'The player should be able to click either paper/rock/sissors' do
    sign_in_and_play
    expect(page).to have_button 'paper'
    expect(page).to have_button 'rock'
    expect(page).to have_button 'sissors'
  end

end

# save_and_open_page

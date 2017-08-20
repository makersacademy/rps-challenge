require 'spec_helper'

feature 'Testing infrastucture' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Sissors!'
  end

  scenario 'The player can enter their name and see it in lights' do
    visit('/')
    fill_in('player_1', with: 'David')
    click_button('Submit')
    visit('/play')
    save_and_open_page
    expect(page).to have_text 'Contender: David'
  end

end

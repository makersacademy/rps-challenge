# frozen_string_literal: true

feature 'rps game' do
  scenario 'select one or two players mode' do
    visit('/')
    expect(page).to have_content 'Welcome to rock, paper, scissors!'
    expect(page).to have_button 'Player VS. Computer'
    expect(page).to have_button 'Player VS. Player'
  end
end

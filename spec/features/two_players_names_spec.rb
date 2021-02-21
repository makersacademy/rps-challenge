# frozen_string_literal: true

feature 'rps game - two players mode' do
  scenario 'enter players name' do
    visit('/')
    click_button('two_players')
    visit('/two_players')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_one_name', with: 'Sandy')
    fill_in('player_two_name', with: 'Hannah')
    click_button('Submit')
  end
end

# frozen_string_literal: true

feature 'rps game - fill in players names' do
  scenario 'one player' do
    visit('/')
    click_button('one_player')
    visit('/one_player')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_one_name', with: 'Sandy')
    click_button('Submit')
  end
  scenario 'two players' do
    visit('/')
    click_button('two_players')
    visit('/two_players')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_one_name', with: 'Sandy')
    fill_in('player_two_name', with: 'Handy')
    click_button('Submit')
  end
end

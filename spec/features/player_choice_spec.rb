# frozen_string_literal: true

feature 'rps game - player can choose what option to play' do
  scenario 'one player only' do
    visit('/')
    click_button('one_player')
    visit('/one_player')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_one_name', with: 'Sandy')
    click_button('Submit')
    visit('/one_player/choice')
    expect(page).not_to have_content('Welcome to rock, paper, scissors!')
    expect(page).to have_content('Ready to play Sandy?')
    expect(page).to have_content('Make your choice:')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
    click_button('Rock')
  end
end

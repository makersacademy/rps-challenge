feature 'playing a game against human' do
  scenario 'player 2 signs in' do
    sign_in_both_players_and_play
    choose("shape_choice", option:  '0')
    click_on 'Play!'
    expect(page).to have_content "Steve's turn!"
  end
end

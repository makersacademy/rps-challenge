feature 'play again' do
  scenario 'player asks for computer move' do
    srand(2)
    sign_in_and_play
    player_chooses_rock
    click_on 'See computer\'s move'
    click_on 'Play again?'
    
    expect(page).to have_content("Let's begin")
  end
end

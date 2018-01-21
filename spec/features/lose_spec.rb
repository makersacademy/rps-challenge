feature 'The player can lose a round' do

  scenario 'the score is shown' do
    sign_in_and_play
    lose_once
    expect(page).to have_content(" Ellie : 0 Computer : 1")
  end

  scenario 'the page displays if the player has lost' do
    sign_in_and_play
    lose_once
    expect(page).to have_content("You lost!")
  end

end

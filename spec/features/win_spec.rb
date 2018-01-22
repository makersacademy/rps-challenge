feature 'the player can win a round' do

  scenario 'the player is given confirmation of win' do
    sign_in_and_play
    win_once
    expect(page).to have_content("You won!")
  end

  scenario 'the score is shown' do
    sign_in_and_play
    win_once
    expect(page).to have_content("Ellie : 1 Computer : 0")
  end

end

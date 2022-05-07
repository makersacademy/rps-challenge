feature "Game outcome screen" do

  scenario "When the player picks rock, they are taken to a results page" do
    sign_in_and_play_1p
    click_on 'Rock'
    expect(page).to have_content('The results are in')
  end

  scenario "The player picks rock, the computer picks scissors, the player wins" do
    srand(3)
    sign_in_and_play_1p
    click_on 'Rock'
    expect(page).to have_content('Mario wins')
  end

  scenario "The player picks scissors, the computer picks scissors, it's a draw" do
    srand(3)
    sign_in_and_play_1p
    click_on 'Scissors'
    expect(page).to have_content('draw')
  end

  scenario "The player picks paper, the computer picks scissors, the player loses" do
    srand(3)
    sign_in_and_play_1p
    click_on 'Paper'
    expect(page).to have_content('Mario loses')
  end

end
feature 'Play game' do
  scenario 'player chooses a move and gets a win screen' do
    srand(1)
    enter_name_and_play
    expect(page).to have_content 'Mittens wins!'
  end

  scenario "page shows the player's and the computer's move" do
    srand(1)
    enter_name_and_play
    expect(page).to have_content 'Mittens picked Rock'
    expect(page).to have_content 'The computer picked Lizard'
  end
end

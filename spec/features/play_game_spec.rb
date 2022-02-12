feature 'Play game' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario "Player is given an option to choose 'Rock', 'Paper' or 'Scissors'" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario "Players selection is displayed" do
    
  end
end
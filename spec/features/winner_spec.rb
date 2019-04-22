feature 'Winner' do
  scenario "confirm player's move" do
    sign_in_and_play
    rock
    expect(page).to have_content "You have selected Rock."
  end
  scenario "displays the computer's move" do
    sign_in_and_play
    rock
    expect(page).to have_content "Computer move: #{ @computer_move }"
  end

  scenario "displays winner when computer wins" do
    sign_in_and_play
    paper
    computer_move_chosen
    expect(page).to have_content "Computer wins!"
  end
  scenario "displays winner when player wins" do
    sign_in_and_play
    paper
    computer_move_chosen
    expect(page).to have_content "You win!"
  end
  scenario 'shows there is a draw' do
    sign_in_and_play
    rock
    computer_move_chosen
    expect(page).to have_content "It's a draw!"
  end
end

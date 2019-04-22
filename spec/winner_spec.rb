feature 'Winner' do
  scenario "confirm player's move" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You have selected Rock."
  end
  scenario "displays the computer's move" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Computer move: #{ @computer_move }"
  end

  scenario "displays winner when computer wins" do
    sign_in_and_play
    click_button "Paper"
    Computer.new.move
    srand(2)
    expect(page).to have_content "Computer wins!"
  end
  scenario "displays winner when player wins" do
    sign_in_and_play
    click_button "Paper"
    Computer.new.move
    srand(3)
    expect(page).to have_content "You win!"
  end
  scenario 'shows there is a draw' do
    sign_in_and_play
    click_button "Scissors"
    Computer.new.move
    srand(2)
    expect(page).to have_content "It's a draw!"
  end
end

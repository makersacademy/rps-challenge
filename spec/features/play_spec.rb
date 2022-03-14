feature "playing the game" do
  scenario "player name is displayed" do
    register
    play_move("scissors")
    expect(page).to have_text("Rob")
  end
  scenario "three options and submit button is displayed" do
    register
    ["rock", "paper", "scissors"].each do |id|
      expect(page).to have_unchecked_field(id: id)
    end
    expect(page).to have_button(name: "submit")
  end
  scenario "result is displayed" do
    register
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    play_move("rock")
    expect(page).to have_text("Rob: Rock")
    expect(page).to have_text("Computer: Paper")
    expect(page).to have_text("Computer wins!")
    expect(page).to have_text("Rob 0 - 1 Computer")
  end
  scenario "multiple games can be played" do
    register
    allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
    play_move("rock")
    expect(page).to have_text("Round 1")
    expect(page).to have_text("Rob: Rock")
    expect(page).to have_text("Computer: Paper")
    expect(page).to have_text("Computer wins!")
    expect(page).to have_text("Rob 0 - 1 Computer")
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    play_move("scissors")
    expect(page).to have_text("Round 2")
    expect(page).to have_text("Rob: Scissors")
    expect(page).to have_text("Computer: Scissors")
    expect(page).to have_text("Draw!")
    expect(page).to have_text("Rob 0 - 1 Computer")
  end
end
feature "result page" do
  before do
    start_single_player
    enter_single_name
  end

  scenario "shows what was played" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button("Rock")
    expect(page).to have_content("Dog played Rock. Computer played Paper.")
  end

  scenario "shows tie message if tie" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button("Rock")
    expect(page).to have_content("It's a tie!")
  end

  scenario "names winner if computer wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button("Rock")
    expect(page).to have_content("Computer wins!")
  end

  scenario "names winner if player wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button("Rock")
    expect(page).to have_content("Dog wins!")
  end

  scenario "shows 'Play Again' button" do
    click_button("Rock")
    expect(page).to have_selector(:button, "Play Again")
  end

  scenario "shows 'Back to Start' button" do
    click_button("Rock")
    expect(page).to have_selector(:button, "Back to Start")
  end

end

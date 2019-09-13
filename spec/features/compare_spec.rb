feature 'Compare results' do
  scenario "Computer wins" do
    visit '/'
    enter_name_and_play
    mock_game = "PAPER"
    allow_any_instance_of(Array).to receive(:sample) {mock_game}
    click_button "ROCK"
    expect(page).to have_content("Computer wins!")
  end

  scenario "You win" do
    visit '/'
    enter_name_and_play
    mock_game = "PAPER"
    allow_any_instance_of(Array).to receive(:sample) {mock_game}
    click_button "SCISSORS"
    expect(page).to have_content("You win!")
  end

  scenario "Tie" do
    visit '/'
    enter_name_and_play
    mock_game = "ROCK"
    allow_any_instance_of(Array).to receive(:sample) {mock_game}
    click_button "ROCK"
    expect(page).to have_content("Tie!")
  end
end

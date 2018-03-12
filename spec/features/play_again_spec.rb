feature "Play again" do

  scenario "You can start again" do
    sign_in_and_play
    choose_options
    choose_options
    click_button('Play again')
    expect(page).to have_content('WELCOME TO ROCK, PAPER, SCISSORS, LIZARD, SPOCK')
  end

end

feature "Play again" do

  scenario "Expect to be able to play another game" do
    start_game
    click_on 'Rock'
    click_on 'Play again'
    expect(page).to have_content 'Rock, Paper or Scissors?'
  end

end

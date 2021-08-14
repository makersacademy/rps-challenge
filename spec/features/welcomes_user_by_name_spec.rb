feature 'player name form' do
  scenario 'a player enters their name into the form and is greeted' do
    enter_name
    expect(page).to have_content("Welcome Ian")
    expect(page).to have_content("To play the game please choose either: Rock, Paper or Scissors !")
  end
end

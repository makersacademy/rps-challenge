feature 'register name of players before playing game' do
  scenario 'obtain the name of players and display them' do
    visit("/")
    fill_in 'player1', with: "Ant"
    fill_in 'player2', with: "Elephant"
    click_button 'Start Game'
    expect(page).to have_content("Ant Vs. Elephant")

  end
end

feature 'setting up game' do
  scenario 'player(s) can choose to play against each other or the computer' do
    visit '/'
    expect(page).to have_content("Do you want to play against a friend or the computer?")
  end

  scenario '2 players can both enter their names and see it on screen' do
    visit '/'
    fill_in :player1, with: "Ellie"
    fill_in :player2, with: "Jack"
    click_button("Submit")
    expect(page).to have_content "Ellie"
    expect(page).to have_content "Jack"
  end
end

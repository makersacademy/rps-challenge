feature 'setting up game' do
  scenario 'players can choose to play against each other or the computer' do
    visit '/'
    expect(page).to have_content("Do you want to play against a friend or the computer?")
  end

  scenario '2 players can both enter their names and see it on screen' do
    visit '/'
    click_button("Friend")
    fill_in :player_1, with: "Odin"
    fill_in :player_2, with: "Zeus"
    click_button("Submit")
    expect(page).to have_content "Odin"
    expect(page).to have_content "Zeus"
  end
end

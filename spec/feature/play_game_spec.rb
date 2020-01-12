feature 'Start Game' do
  scenario 'choose an attack' do
    visit('/')
    fill_in :player_1_name, with: "Kittens"
    click_button 'Submit'
    expect(page).to have_content "Please choose an attack type to begin"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'Show player vs computer move' do
    visit('/')
    fill_in :player_1_name, with: "Kittens"
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You picked Rock, the Computer picked Paper"
  end

end
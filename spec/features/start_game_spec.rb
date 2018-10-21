feature "Start game" do
  scenario "Step 1 - Enter names" do
    visit('/')
    fill_in :player_1_name, with: 'Edyta'
    fill_in :player_2_name, with: 'Caio'

    click_button 'Start the game!'

    expect(page).to have_content "Edyta vs Caio"
    expect(page).to have_content "Edyta's turn"
  end

  scenario "Step 2 - Player 1 selects move" do
    visit('/')
    fill_in :player_1_name, with: 'Edyta'
    fill_in :player_2_name, with: 'Caio'

    click_button 'Start the game!'
    click_button 'Rock'

    expect(page).to have_content "Edyta vs Caio"
    expect(page).to have_content "Caio's turn"
  end

end

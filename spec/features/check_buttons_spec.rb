feature 'Check for the buttons on play page' do
  scenario 'checks for Rock button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_button("Rock")
  end

  scenario 'checks for Paper button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_button("Paper")
  end

  scenario 'checks for Paper button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_button("Scissors")
  end
end

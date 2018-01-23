feature 'Displays a welcome page' do
  scenario 'can submit game options' do
    visit '/multiplayer'
    expect(page).to have_content 'Player1 name'
    expect(page).to have_content 'Player2 name'
  end
end

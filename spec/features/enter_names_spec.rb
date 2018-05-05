feature 'Records the player name' do
  scenario 'display player name on play page' do
    visit('/')
    fill_in "player_one", with: 'Salome'
    click_on 'submit'
    expect(page).to have_content("Welcome, Salome")
  end
end

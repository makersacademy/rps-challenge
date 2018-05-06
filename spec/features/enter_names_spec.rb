feature 'Records the player name' do
  scenario 'display player name on play page' do
    sign_in
    expect(page).to have_content("Welcome, Salome")
  end
end

feature 'Player registration' do
  scenario 'player can enter name to register' do
    register
    expect(page).to have_content "Welcome, Tomas"
  end
end

feature 'testing infrastructure working' do
  scenario 'should greet the player' do
    visit("/")
    expect(page).to have_content('Welcome to RPS game!')
  end
  scenario 'should invite the user to play' do
    visit("/")
    expect(page).to have_content("Are you ready to play?")
  end
  scenario 'should invite the player to enter their names' do
    visit("/")
    expect(page).to have_content('Enter your name')
  end
end

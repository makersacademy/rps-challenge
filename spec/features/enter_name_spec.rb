feature 'Enter name' do
  scenario 'Player can enter their name' do
    sign_in_and_battle
    expect(page).to have_content 'Welcome to the fight, Will!'
  end
end

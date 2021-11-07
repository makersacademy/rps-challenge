feature 'Entering name' do
  scenario 'User can enter name and submit it' do
    sign_in_and_play
    expect(page).to have_content "Welcome to the game, Maja!"
  end
end
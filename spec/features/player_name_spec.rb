feature 'player can enter a name' do
  scenario 'entered name is displayed on screen' do
    sign_in_and_play
    expect(page).to have_content('Welcome, Josu!')
  end
end
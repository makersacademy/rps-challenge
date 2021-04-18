feature 'Player name' do
  scenario 'it welcomes the player' do
    sign_in_and_play
    expect(page).to have_content 'Welcome John'
  end
end
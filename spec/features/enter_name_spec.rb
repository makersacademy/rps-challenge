feature 'Enter name' do
  scenario 'player can have entered name displayed' do
    gamebot_bob_play
    expect(page).to have_content "Hello, Bob!"
  end
end
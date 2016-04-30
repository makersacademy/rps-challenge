feature 'Registering Names' do
  let (:player_name) { random_string }
  scenario 'Player 1 enters name' do
    sign_in_and_play player_name
    expect(page).to have_content "#{player_name} vs. Computer"
  end
end
feature 'One player screen' do
  scenario 'the title page loads' do
    visit '/'
    click_button "Computer"
    expect(page).to have_content "Rock Paper Scissors Lizard Spock"
  end
  scenario 'there is a field for a player to sign in' do
    visit '/'
    click_button "Computer"
    expect(page).to have_field 'name'
  end
  scenario 'there is a button that starts the game' do
    one_player_version
    expect(page).to have_current_path '/play'
  end
end

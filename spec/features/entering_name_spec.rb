feature 'adding player name' do
  scenario 'visiting name entering page' do
    visit('/')
    expect(page).to have_content "Sign in to play"
  end
  scenario 'entering name' do
    sign_in_player1_and_play
    expect(page).to have_content "Dave's turn!"
  end
end

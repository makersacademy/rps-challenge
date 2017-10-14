feature 'starting a game' do
  scenario 'player can enter their name to start a game' do
    sign_in_and_play
    expect(page).to have_content "Hello Lucy! Let's play rock paper scissors!"
  end
end

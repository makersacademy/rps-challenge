feature 'Registering to play' do
  scenario 'Player enters name to start a game' do
    sign_in_and_play
    expect(page).to have_content 'Current Player: Norm'
  end
end


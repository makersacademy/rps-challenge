feature 'Start game' do
  scenario 'when player selects start game button' do
    sign_in_and_play
    expect(page).to have_button 'Start game'
  end
end

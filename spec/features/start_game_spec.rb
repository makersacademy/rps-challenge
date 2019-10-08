feature 'Start game' do
  scenario 'when single player selects start game button' do
    sign_in_sp_play
    expect(page).to have_button 'Start game'
  end

  scenario 'when multi players selects start game button' do
    sign_in_mp_play
    expect(page).to have_button 'Start game'
  end
end

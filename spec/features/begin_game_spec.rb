feature 'begin game' do
  scenario 'clicking begin game takes you to the game page' do
    sign_in_and_play_vs_computer
    expect(page).to have_content 'Mabon vs Computer'
  end
end

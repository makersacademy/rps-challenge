feature 'begin game' do
  scenario 'clicking begin game takes you to the game page' do
    sign_in
    click_button 'Play'
    expect(page).to have_content 'Mabon vs Computer'
  end
end

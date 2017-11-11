feature 'viewing player score' do
  scenario 'player should start with 0 points' do
    sign_in_and_play
    expect(page).to have_content 'Jo Score : 0'
  end
  scenario 'computer should start with 0 points' do
    sign_in_and_play
    expect(page).to have_content 'Computer Score : 0'
  end
end

feature 'viewing player score' do
  scenario 'player should start with 0 points' do
    sign_in_and_play
    expect(page).to have_content 'Score : 0'
  end
end

feature 'player name' do
  scenario 'player enters name on starting game' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Ryan vs. Imposter Ryan'
  end
end

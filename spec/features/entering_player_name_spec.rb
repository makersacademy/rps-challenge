feature 'entering player name' do
  scenario 'player can input their name into game' do
    sign_in_and_play
    expect(page).to have_content 'Tunji'
  end
end

feature 'player can enter names' do
  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'Steve vs. Dave'
  end
end

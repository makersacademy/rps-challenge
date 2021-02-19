feature 'gets the names' do
  scenario 'get player names' do
    sign_in_and_play
    expect(page).to have_content 'Player: Max'
  end
end

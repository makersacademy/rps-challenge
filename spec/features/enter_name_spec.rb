feature 'Enter player name' do
  scenario 'Submits players name' do
    sign_in_and_play
    expect(page).to have_content 'Dave'
  end
end

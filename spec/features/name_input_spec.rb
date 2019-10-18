feature 'Entering player name' do
  scenario 'Can run app and enter name for a player' do
    sign_in_and_play
    expect(page).to have_content 'are you ready to play Vikash'
  end
end

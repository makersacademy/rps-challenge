RSpec.feature 'Enter a player name' do
  scenario 'fill in name form with Marcus' do
    sign_in_and_play
    expect(page).to have_content "New player: Marcus"
  end
end

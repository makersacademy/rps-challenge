feature 'Name entry' do
  scenario 'the player name can be entered' do
    start_game
    expect(page).to have_content 'Ben'
  end
end

feature 'sets up the game' do
  scenario 'allows player to register a name' do
    register_and_play
    expect(page).to have_content 'Rudolph'
  end
end

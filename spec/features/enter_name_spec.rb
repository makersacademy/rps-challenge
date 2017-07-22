feature 'Enter name' do
  scenario 'registers the player name' do
    register_and_play
    expect(page).to have_content 'Sheldon vs. Computer'
  end
end

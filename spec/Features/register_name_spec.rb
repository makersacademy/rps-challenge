feature 'register_name' do
  scenario 'player can register name before playing' do
    register_player
    expect(page).to have_content 'Tim vs Computer'
  end
end

feature 'Entering a name' do
  scenario "shows the player's name" do
    start_normal_game
    expect(page).to have_content 'Tony vs Computer'
  end
end

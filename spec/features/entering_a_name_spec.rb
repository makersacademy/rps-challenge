feature 'Entering a name' do
  scenario "shows the player's name" do
    sign_in_1_player
    expect(page).to have_content 'Tony vs Computer'
  end
end

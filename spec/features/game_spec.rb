# the game will choose a random option

feature "game choose a random option when player go back to play" do

  scenario "player can choose Rock" do
    sign_in_and_play
    click_button('Rock')
    click_button('Game\'s option')
    expect(page).to have_content('Game returned its choice:')
  end
end

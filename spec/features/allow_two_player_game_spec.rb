feature "Users can choose to play a two player game" do
  scenario "on the home page" do
    sign_in_two_players
    message = "Billy, choose your move! Don't let Barry see!"
    expect(page).to have_content message

  end
end

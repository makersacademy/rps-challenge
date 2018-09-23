feature "On the home page" do
  scenario "Users can enter their name" do
    sign_in_one_player
    expect(page).to have_content("Billy, let's play RPSLS!")
  end
end

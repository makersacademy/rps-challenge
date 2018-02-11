feature "abc" do
  scenario "Displays the users name" do
    sign_in_and_play
    expect(page).to have_content("Jim vs RPSbot")
  end
end

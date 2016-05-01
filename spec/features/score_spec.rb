feature "Shows the scores" do

  scenario "S hows player score" do
    sign_in_and_play
    message = "Wayne's score: 0"
    expect(page).to have_content message
  end

  scenario "Shows computer score" do
    sign_in_and_play
    message = "Computer's score: 0"
    expect(page).to have_content message
  end

end

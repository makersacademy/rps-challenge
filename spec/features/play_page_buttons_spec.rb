feature "Play page" do

  scenario "Has buttons for each move" do
    sign_in_and_play_against_computer
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissor")
    expect(page).to have_button("spock")
    expect(page).to have_button("lizard")
  end

end

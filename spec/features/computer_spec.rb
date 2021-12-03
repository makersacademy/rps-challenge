feature "computer makes choices" do
  scenario "Computer makes choice and notification is given" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("Computer chose #{["Rock", "Paper", "Scissors"].sample}!")
  end
end
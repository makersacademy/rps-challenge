feature "rps" do
  scenario "user is greeted with their own name" do
    sign_in
    expect(page).to have_content ("Welcome, Leo!")
  end

  scenario "user gets asked to choose rock, paper or scissors" do
    sign_in
    expect(page).to have_content ("Choose a move!")
  end

  scenario "user chooses Rock and gets shown the result" do
    sign_in
    # fill_in "choice",	with: "Rock"
    choose(option: 'Rock')
    click_button("Play")
    expect(page).to have_content ("You chose Rock")
  end
end 
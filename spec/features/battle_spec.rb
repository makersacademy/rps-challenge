require "./rps_web.rb"

feature "select weapon" do
  scenario "player win" do
    sign_in_and_play
    fill_in :weapons, with: "scissors"
    srand(1234)
    click_button("Play")
    expect(page).to have_content("You win")
  end

  scenario "player lose" do
    sign_in_and_play
    fill_in :weapons, with: "rock"
    srand(1234)
    click_button("Play")
    expect(page).to have_content("You lose")
  end

  scenario "player draw" do
    sign_in_and_play
    fill_in :weapons, with: "paper"
    srand(1234)
    click_button("Play")
    expect(page).to have_content("You draw")
  end

  scenario "return the play" do
    sign_in_and_play
    fill_in :weapons, with: "rock"
    srand(1234)
    click_button("Play")
    click_button("Play Again")
    expect(page).to have_content("Select your weapon")
  end
end

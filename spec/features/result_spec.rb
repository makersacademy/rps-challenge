feature "results" do
  scenario "the player's choice of Rock is displayed on the results page" do
    sign_in_and_play
    choose("Rock")
    click_button("Go")

    expect(page).to have_content "Ellie chose Rock"
  end

  scenario "the player's choice of Paper is displayed on the results page" do
    sign_in_and_play
    choose("Paper")
    click_button("Go")

    expect(page).to have_content "Ellie chose Paper"
  end

  scenario "the player's choice of Scissors is displayed on the results page" do
    sign_in_and_play
    choose("Scissors")
    click_button("Go")

    expect(page).to have_content "Ellie chose Scissors"
  end
end

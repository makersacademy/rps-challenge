feature "Playing the game do" do
  scenario "marketeer sees three choices" do
    ready_to_play
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  scenario "marketeer can select either rock, paper or scissors" do
    ready_to_play
    expect(page).to have_checked_field("Rock")
    expect(page).to have_unchecked_field("Paper")
    expect(page).to have_unchecked_field("Scissors")
  end

  scenario "marketer can submit Paper" do
    ready_to_play
    choose("Paper")
    click_button("Fight!")
    expect(page).to have_content("You chose Paper")
  end

  scenario "marketer can submit Rock" do
    ready_to_play
    choose("Rock")
    click_button("Fight!")
    expect(page).to have_content("You chose Rock")
  end
end

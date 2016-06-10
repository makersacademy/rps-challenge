feature "Picking a move" do
  scenario "player picks rock" do
    sign_in_and_start
    choose("Rock")
    click_button("Submit")
    expect(page).to have_content("Van chose Rock")
  end

  scenario "player picks paper" do
    sign_in_and_start
    choose("Paper")
    click_button("Submit")
    expect(page).to have_content("Van chose Paper")
  end

  scenario "player picks scissors" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    expect(page).to have_content("Van chose Scissors")
  end
end

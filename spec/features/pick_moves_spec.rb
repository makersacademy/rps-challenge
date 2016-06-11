feature "Picking a move" do
  scenario "player picks rock" do
    sign_in_and_start
    choose("Rock")
    click_button("Submit")
    expect(page).to have_content("Van chose rock")
  end

  scenario "player picks paper" do
    sign_in_and_start
    choose("Paper")
    click_button("Submit")
    expect(page).to have_content("Van chose paper")
  end

  scenario "player picks scissors" do
    sign_in_and_start
    choose("Scissors")
    click_button("Submit")
    expect(page).to have_content("Van chose scissors")
  end
end

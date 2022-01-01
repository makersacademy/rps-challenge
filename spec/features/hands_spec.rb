feature "hand of" do
  scenario "human shown" do
    enter_name_and_submit
    click_button("rock")
    expect(page).to have_content("rock")
  end
  scenario "computer shown" do
    enter_name_and_submit
    click_button("paper")
    expect(page).to have_content("computer chose")
  end
end

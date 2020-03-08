feature "hand of" do
  scenario "human shown" do
    visit("/")
    fill_in :human, with: "Nima"
    click_button("submit")
    click_button("rock")
    expect(page).to have_content("rock")
  end
  scenario "computer shown" do
    visit("/")
    fill_in :human, with: "Nima"
    click_button("submit")
    click_button("paper")
    expect(page).to have_content("computer chose")
  end
end

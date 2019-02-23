feature "Marketeer can register their name" do
  scenario "submitting marketeer name" do
    visit('/')
    fill_in :marketeer1, with: "Mittens"
    click_button "Submit"
    expect(page).to have_content "Hello Mittens!"
  end
end

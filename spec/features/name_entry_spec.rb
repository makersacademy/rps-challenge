feature "Name Entry" do
  scenario "Marketeer can register their name" do
    visit('/')
    fill_in :player_1_name, with: "Dwayne 'The Marketeer' Johnson"
    click_button "Submit"
    expect(page).to have_content "Dwayne 'The Marketeer' Johnson"
  end
end

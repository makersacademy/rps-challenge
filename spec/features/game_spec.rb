feature "User can play a game" do

  scenario "The user's name is displayed" do
    add_name
    save_and_open_page
    expect(page).to have_text "Ben Vs."
  end
end

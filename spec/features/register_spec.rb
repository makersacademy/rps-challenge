feature "entering name before playing game" do
  scenario "being greeted by name" do
    fill_in_name_and_start_new_game
    expect(page).to have_content("Hi there, Bob!")
  end
end
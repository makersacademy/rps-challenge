feature "register name" do
  scenario "A player can register their name before playing" do
    visit('/')
    fill_in :name, with: "Spidey"
    click_button("That's my name!")
    expect(page).to have_content "Te llamas Spidey"
  end
end

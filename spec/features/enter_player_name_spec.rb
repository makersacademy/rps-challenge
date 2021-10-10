feature "New player" do
  scenario "visit home page" do
    visit("/")
    expect(page).to have_content "Hello!\nInsert your name:"
  end

  scenario "can register its name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Serena!"
  end
end

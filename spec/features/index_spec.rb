feature "homepage" do
  scenario "user visits homepage and is greeted and asked to enter his name" do
    visit('/')
    expect(page).to have_content ("Hello!")
    expect(page).to have_content ("Enter your name to play RPS.")
  end

  scenario "user visits homepage and enters their name" do
    visit("/")
    fill_in "name",	with: "Leo"
    click_button("Register")
    expect(current_path).to eq("/play")
  end
end
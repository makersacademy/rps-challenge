feature "homepage" do
  scenario "user visits homepage and enters their name" do
    visit("/")
    fill_in "name",	with: "Leo"
    click_button("Register")
    expect(current_path).to eq("/play")
  end
end
feature "enter name" do
  scenario "visit homepage and enter name" do
    sign_in_and_play
    expect(page).to have_content("Welcome Harrison")
  end
end

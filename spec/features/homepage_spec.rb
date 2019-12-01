feature "homepage" do
  scenario "it displays the title" do
    visit('/')
    expect(page).to have_content("Welcome!")
  end
end
feature "Testing infrastructure" do
  scenario "Homepage contains a specific word" do
    visit('/')
    expect(page).to have_content("Rock")
  end
end

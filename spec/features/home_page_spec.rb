feature "visiting the homepage" do
  scenario "should welcome user to homepage" do
    visit('/')
    expect(page).to have_content "Welcome to rock, paper, scissors!"
  end
end


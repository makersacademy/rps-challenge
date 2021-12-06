feature "visiting the homepage" do
  scenario "should welcome user to homepage" do
    visit('/')
    expect(page).to have_content "Welcome to rock, paper, scissors!"
  end

  scenario "user should be able to enter name" do
    visit('/')
    expect(page.has_field?('name')).to be_truthy
  end
end

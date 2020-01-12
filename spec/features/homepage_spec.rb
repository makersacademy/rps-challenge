feature "testing homepage" do
  scenario "checks homepage for text" do
    visit('/')
    expect(page).to have_content "Please Enter a Name:"
  end
end

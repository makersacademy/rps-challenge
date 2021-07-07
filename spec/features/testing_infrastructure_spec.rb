feature "Testing infrastructure" do
  scenario "testing it works" do
    visit ('/')
    expect(page).to have_content "Welcome!"
  end

end

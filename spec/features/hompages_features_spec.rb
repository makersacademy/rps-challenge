feature "Homepage" do
  scenario "Says Hello" do
    visit '/'
    expect(page).to have_content("Hello")
  end
end

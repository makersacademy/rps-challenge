feature "Enter player names" do
  scenario "Enter the name 'Steve' and have it shown" do
    visit '/'
    fill_in("name", with: "Steve")
    click_button("submit")
    expect(page).to have_content("Steve")
  end

  scenario "Enter the name 'Jonny' and have it shown" do
    visit '/'
    fill_in("name", with: "Jonny")
    click_button("submit")
    expect(page).to have_content("Jonny")
  end
end

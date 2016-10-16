feature "enter name" do
  scenario "can submit a name" do
    visit ('/')
    fill_in :name, with: "jini"
    click_button "Play!"
    expect(page).to have_content "Welcome jini!"
  end
end

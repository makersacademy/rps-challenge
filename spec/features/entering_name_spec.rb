feature "player can register name of online game" do
  scenario "user can enter name" do
    visit('/')
    fill_in('name', with: 'Pookie')
    click_button('Submit')
    expect(page).to have_content ("Welcome Pookie")
  end
end

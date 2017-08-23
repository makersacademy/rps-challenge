feature "multiplayer page", type: :feature do
  scenario "it has a button to play the computer" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    expect(page).to have_button("Play Computer")
  end
  scenario "it has a button to play a friend" do
    visit "/"
    fill_in('name', with: 'Jenny')
    click_button('Submit')
    expect(page).to have_button("Play Friend")
  end
end

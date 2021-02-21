feature 'player can enter name' do
  scenario 'and sees it displayed after entering on the home page' do
    visit("/")
    fill_in("name", with: "BIMINI BON BOULASH")
    click_button "Play!"
    expect(page).to have_content("It's time to play, BIMINI BON BOULASH!")
  end
end

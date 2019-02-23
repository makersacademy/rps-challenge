feature 'After log in' do
  scenario 'player can select a weapon' do
    visit('/')
    fill_in("name", with: "Dora")
    click_button("Start")
    expect(page).to have_content "Choose your weapon"
  end
end

feature 'Enter name' do
  scenario 'player submitting name' do
    visit('/')
    fill_in "player_name", with: "dave"
    click_button "Submit"
    expect(page).to have_content("Hi dave!")
  end
end
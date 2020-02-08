feature 'getting names' do
  scenario 'records the players names' do
    visit('/')
    fill_in('player_1_name', with: "Jason")
    fill_in('player_2_name', with: "Statham")
    click_button("Submit")
    expect(page).to have_content("Jason")
    expect(page).to have_content("Statham")
  end
end
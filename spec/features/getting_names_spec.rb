feature 'getting names' do
  scenario 'records the players names' do
    visit('/')
    fill_in('player_1_name', with: "Tango")
    fill_in('player_2_name', with: "Cash")
    click_button("Submit")
    expect(page).to have_content("Tango")
    expect(page).to have_content("Cash")
  end
end

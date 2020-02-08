feature 'player 1 turn' do
  scenario 'player 1 chooses his action' do
    visit('/')
    fill_in('player_1_name', with: "Tango")
    fill_in('player_2_name', with: "Cash")
    click_button("Submit")
    click_button("Rock")
    expect(page).to have_content("Tango has made his choice")
  end
end
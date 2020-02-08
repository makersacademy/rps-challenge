feature 'player 1 turn' do
  scenario 'player 1 chooses his action' do
    visit('/')
    fill_in('player_1_name', with: "Jason")
    fill_in('player_2_name', with: "Statham")
    click_button("Submit")
    click_button("Rock")
    expect(page).to have_content("Jason has made his choice")
  end
end
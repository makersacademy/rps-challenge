feature 'Winner is selected' do
  scenario 'the outcome is decided' do
    visit '/'
    click_button("Computer")
    fill_in :player_1, with: "Odin"
    click_button("Submit")
    click_button("Let's go!")
    select 'Rock', from: 'player_1_move'
    click_button("Submit")
    expect(page).to have_content("The winner is:")
  end
end

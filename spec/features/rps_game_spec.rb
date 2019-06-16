feature "User can make a move and play a game." do
  scenario "User chooses rock and submits" do
    visit '/'
    fill_in :player_name, with: "Remzilla"
    click_button('Submit')
    choose('rock')
    click_button('Submit')
    expect(page).to have_content("Player wins!")
  end
end
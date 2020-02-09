feature 'testing computer as player' do
  scenario 'registers computer as a player' do
    visit('/')
    fill_in('player_1_name', with: "Tango")
    click_button("Play!")
    expect(page).to have_content("Tango versus Computer")
  end

  scenario 'computer can make a move' do
    visit('/')
    fill_in('player_1_name', with: "Tango")
    click_button("Play!")
    click_button("Paper")
    expect(page).to have_content("Computer chose ")
  end
end

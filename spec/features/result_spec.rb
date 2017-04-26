feature "Show the results of players & game's choice" do
  scenario "player makes a choice and see's result against game"  do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content "You chose: Rock"
  end

  scenario "game makes a choice and can see result"  do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content "The game chose: "
  end
end

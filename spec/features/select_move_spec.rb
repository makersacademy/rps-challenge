feature "Players selects move" do
  scenario "Player can see possible moves" do
    play_single
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

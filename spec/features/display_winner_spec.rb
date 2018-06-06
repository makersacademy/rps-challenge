feature "display winner" do
  scenario "winner is declared" do
    allow(Computer::DEFAULT_MOVES).to receive(:sample) { "Rock" }
    register_to_play
    click_button('Paper')
    expect(page).to have_content "Mr Rosso has choosen: Rock"
    expect(page).to have_content "Pookie is the winner!"
  end
end

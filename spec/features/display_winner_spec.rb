feature "display winner" do
  scenario "winner is declared" do
    allow(Computer::MOVES).to receive(:sample) { "Paper" }
    register_to_play
    click_link('Scissors')
    expect(page).to have_content "Mr Rosso has choosen: Paper"
    expect(page).to have_content "Pookie is the winner!"
  end
end

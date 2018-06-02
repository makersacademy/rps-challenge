feature "display winner" do
  scenario "winner is declared" do
    register_to_play
    click_link('Rock')
    # moves_double = double(sample: "Scissors")
    # computer = Computer.new(moves_double)
    # player = Player.new("Pookie", computer)
    expect(page).to have_content "Computer has choosen: #{$player.opponent.move}"
    expect(page).to have_content "Pookie is the winner!"
  end
end

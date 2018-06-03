feature "computer move" do
  scenario "computer move is displayed" do
    register_to_play
    click_link('Rock')
    expect(page).to have_content "Mr Rosso has choosen: #{$game.opponent.move}"
  end
  scenario "computer move is displayed" do
    register_to_play
    click_link('Paper')
    expect(page).to have_content "Mr Rosso has choosen: #{$game.opponent.move}"
  end
  scenario "computer move is displayed" do
    register_to_play
    click_link('Scissors')
    expect(page).to have_content "Mr Rosso has choosen: #{$game.opponent.move}"
  end
end

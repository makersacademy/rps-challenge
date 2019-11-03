feature 'see result' do

  scenario 'player wins' do
    allow_any_instance_of(Game).to receive(:result).and_return(:win)
    choose_rock
    click_button 'FIGHT'
    expect(page).to have_content "YOU WON!!!"
  end

  scenario 'player looses' do
    allow_any_instance_of(Game).to receive(:result).and_return(:lose)
    choose_rock
    click_button 'FIGHT'
    expect(page).to have_content "You lost :("
  end

  scenario 'draw' do
    allow_any_instance_of(Game).to receive(:result).and_return(:draw)
    choose_rock
    click_button 'FIGHT'
    expect(page).to have_content "It's a draw."
  end

end

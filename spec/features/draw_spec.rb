feature 'drawing the game' do

  scenario 'When I submit rock, I am told if I have won' do
    allow_any_instance_of(Game).to receive(:selection).and_return('Rock')
    sign_in
    click_button 'Rock'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'When I submit paper, I am told if I have won' do
    allow_any_instance_of(Game).to receive(:selection).and_return('Paper')
    sign_in
    click_button 'Paper'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'When I submit scissors, I am told if I have won' do
    allow_any_instance_of(Game).to receive(:selection).and_return('Scissors')
    sign_in
    click_button 'Scissors'
    expect(page).to have_content "It's a draw!"
  end

end

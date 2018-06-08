feature 'announcing the winner of single game' do
  let(:game) { double('a game')}
  scenario 'shows the winner in single game' do
    allow(game).to receive(:computer_weapon).and_return("scissors")
    srand(2); game.computer_weapon
    sign_in_and_play_single
    click_button('rock')
    expect(page).to have_content('Justyna picked rock. Computer picked scissors. Final score: Justyna won')
  end
end

feature 'announcing the winner of multi game' do
  scenario 'shows the winner in multi game' do
    sign_in_and_play_multi
    click_button('rock')
    click_button('rock')
    expect(page).to have_content('Justyna picked rock. Igor picked rock. Final score: Draw!')
  end
end

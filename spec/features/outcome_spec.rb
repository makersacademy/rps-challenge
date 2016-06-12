require './lib/game'

feature 'player wins against computer' do
  scenario 'player draws rock, computer draws scissors' do
    sign_in_and_play
    allow(Game.instance.computer).to receive(:choice).and_return(:Scissors)
    click_button 'Rock'
    expect(page).to have_content('Congratulations! You win!')
  end
end


feature 'player loses against computer' do
  scenario 'player draws scissors, computer draws rock' do
    sign_in_and_play
    allow(Game.instance.computer).to receive(:choice).and_return(:Rock)
    click_button 'Scissors'
    expect(page).to have_content('Oh no! You lost!')
  end
end

feature 'game ends in a draw' do
  scenario 'both the player and computer choose the same item' do
    sign_in_and_play
    allow(Game.instance.computer).to receive(:choice).and_return(:Paper)
    click_button 'Paper'
    expect(page).to have_content('It\'s a draw!')
  end
end
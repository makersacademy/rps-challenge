# require 'game'
#
# describe Game do
#
#   let(:game_class) {Game}
#   let(:game) {game_class.create(first_player, second_player)}
#   let(:first_player) {double('Player 1', name: 'Marcus', move: 'rock')}
#   let(:second_player) {double('Player 2', name: 'Gamblore', move: 'scissors')}
#
#   let(:alternate_game) {game_class.create(first_player_loses, second_player)}
#   let(:first_player_loses) {double('Player 1', name: 'Marcus', move: 'paper')}
#
#
#   let(:first_player_draw) {double('Player 1', name: 'Marcus', move: 'rock')}
#   let(:draw_game) {game_class.create(first_player_draw, second_player)}
#

feature 'choose RPS option' do
  scenario 'choose rock option, WIN' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    # allow(game.player_2).to receive(:move).and_return('scissors')
    expect(page).to have_content 'Marcus wins! \ (•◡•) /'
  end

  scenario 'choose rock option, LOSE' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Your enemy wins! \ (•◡•) /'
  end
  # ಠ╭╮ಠ

  scenario 'choose rock option, DRAW' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    expect(page).to have_content 'Tie Game! (╯°□°）╯︵ ┻━┻'
  end
end

# end

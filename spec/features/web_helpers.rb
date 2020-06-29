# frozen_string_literal: true

def sign_in_and_play
  visit '/'
  fill_in :name, with: 'James'
  click_button 'Submit'
end

def player_win_rock
  allow_any_instance_of(GameLogic).to receive(:computer).and_return 'scissors'
  allow_any_instance_of(GameLogic).to receive(:result).and_return 'You win'
end

def player_lose_scissors
  allow_any_instance_of(GameLogic).to receive(:computer).and_return 'rock'
  allow_any_instance_of(GameLogic).to receive(:result).and_return 'You lose'
end

def player_draw_paper
  allow_any_instance_of(GameLogic).to receive(:computer).and_return 'paper'
  allow_any_instance_of(GameLogic).to receive(:result).and_return 'There was a draw'
end

# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RPS

feature "the player can win" do
  it 'Rock v Scissor: shows player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play_rock
    expect(page).to have_content("the winner is: ROCK")
  end
end

feature 'the computer can win' do
  it 'Rock v Paper: shows computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play_rock
    expect(page).to have_content("the winner is: PAPER")
  end

end

feature 'there can be a draw' do
  it 'Rock v Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play_rock
    expect(page).to have_content("the winner is: DRAW")
  end
end

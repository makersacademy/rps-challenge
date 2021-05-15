# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RPS

feature "the player can win" do
  it 'Rock v Scissor: shows player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play_rock
    expect(page).to have_content("ELVIS")
  end

  it 'Paper v Rock: shows player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play_paper
    expect(page).to have_content("ELVIS")
  end

  it 'Scissor v Paper: shows player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play_scissors
    expect(page).to have_content("ELVIS")
  end
end

feature 'the computer can win' do
  it 'Rock v Paper: shows computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play_rock
    expect(page).to have_content("the winner is: THE GAME")
  end

  it 'Paper v Scissors: shows computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play_paper
    expect(page).to have_content("the winner is: THE GAME")
  end

  it 'Scissors v Rock: shows computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play_scissors
    expect(page).to have_content("the winner is: THE GAME")
  end
end

feature 'there is a draw' do
  it 'Rock v Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play_rock
    expect(page).to have_content("DRAW")
  end

  it 'Paper v Paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play_paper
    expect(page).to have_content("DRAW")
  end

  it 'Scissors v Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play_scissors
    expect(page).to have_content("DRAW")
  end
end

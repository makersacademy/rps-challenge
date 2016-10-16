require 'spec_helper'


feature 'Playing the Game' do

  scenario 'player can chose a move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'Rock versus Paper returns Loss' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You Lose!'
  end

  scenario 'Rock versus Scissors returns Win' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'What a Winner!'
  end

  scenario 'Rock versus Rock returns Draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'draw'
  end

  scenario 'Paper versus Paper returns Draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'draw'
  end

  scenario 'Paper versus Scissors returns Loss' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You Lose!'
  end

  scenario 'Paper versus Rock returns Win' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'What a Winner!'
  end

  scenario 'Scissors versus Paper returns Win' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'What a Winner!'
  end

  scenario 'Scissors versus Scissors returns Draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'draw'
  end

  scenario 'Scissors versus Rock returns Loss' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You Lose!'
  end

end

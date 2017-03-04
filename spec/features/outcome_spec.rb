require 'spec_helper'

feature 'displays results' do

  let(:computer) { double :computer }

  before do
    sign_in_and_play
  end

  feature 'player selects rock' do
    scenario 'draw between computer and player' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      click_button 'rock'
      expect(page).to have_content("It's a DRAW!")
    end

    scenario 'player wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      click_button 'rock'
      expect(page).to have_content("You WON!")
    end

    scenario 'computer wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      click_button 'rock'
      expect(page).to have_content("You LOST!")
    end
  end

  feature 'player selects paper' do
    scenario 'draw between computer and player' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      click_button 'paper'
      expect(page).to have_content("It's a DRAW!")
    end

    scenario 'player wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      click_button 'paper'
      expect(page).to have_content("You WON!")
    end

    scenario 'computer wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      click_button 'paper'
      expect(page).to have_content("You LOST!")
    end
  end

  feature 'player selects scissors' do
    scenario 'draw between computer and player' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      click_button 'scissors'
      expect(page).to have_content("It's a DRAW!")
    end

    scenario 'player wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      click_button 'scissors'
      expect(page).to have_content("You WON!")
    end

    scenario 'computer wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      click_button 'scissors'
      expect(page).to have_content("You LOST!")
    end
  end


end

require 'spec_helper'
require 'capybara'

feature '#Starts the game' do
  scenario 'has single and multiplayer buttons' do
    visit('/')
    expect(page).to have_button 'single'
    expect(page).to have_button 'multi'
  end

  scenario 'single player lose' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      play_single
      expect(page).to have_text("Murilo VS. Computer")
      expect(page).to have_text("Murilo chose rock")
      expect(page).to have_text("Computer chose paper")
      expect(page).to have_text("Murilo LOST!!!")
  end

  scenario 'single player win' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      play_single
      expect(page).to have_text("Murilo VS. Computer")
      expect(page).to have_text("Murilo chose rock")
      expect(page).to have_text("Computer chose scissors")
      expect(page).to have_text("Murilo WON!!!")
  end

  scenario 'single player draw' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      play_single
      expect(page).to have_text("Murilo VS. Computer")
      expect(page).to have_text("Murilo chose rock")
      expect(page).to have_text("Computer chose rock")
      expect(page).to have_text("It's a draw!")
  end

  scenario 'multiplayer win' do
    multiplayer_win
    expect(page).to have_text("Murilo VS. Opponent")
    expect(page).to have_text("Murilo chose rock")
    expect(page).to have_text("Opponent chose scissors")
    expect(page).to have_text("Murilo WON!!!")
  end

  scenario 'multiplayer lose' do
    multiplayer_lose
    expect(page).to have_text("Murilo VS. Opponent")
    expect(page).to have_text("Murilo chose rock")
    expect(page).to have_text("Opponent chose paper")
    expect(page).to have_text("Murilo LOST!!!")
  end

  scenario 'multiplayer draw' do
    multiplayer_draw
    expect(page).to have_text("Murilo VS. Opponent")
    expect(page).to have_text("Murilo chose rock")
    expect(page).to have_text("Opponent chose rock")
    expect(page).to have_text("It's a draw!")
  end
end

require 'spec_helper'

feature 'playing a game' do

  before do
    visit '/'
    fill_in :player_name, with: 'Lukasz'
    click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

 scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end


  scenario 'game chooses "Rock"' do
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end

  scenario 'game chooses a random option' do
    srand(1234)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end

  context 'end game' do
    before do
      srand(1234)
    end

    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'Welcome, Lukasz. Choose your tool! You chose Rock! Opponent chose Scissors! You won and saved the world!'
    end

    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'Welcome, Lukasz. Choose your tool! You chose Paper! Opponent chose Scissors! You lost and Skynet eradicated all humans!'
    end

    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'Welcome, Lukasz. Choose your tool! You chose Scissors! Opponent chose Scissors! You drew! Skynet is sending a Terminator after you!'
    end
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end

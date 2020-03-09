require './spec/spec_helper'

feature 'Playing RPS' do
  SEED = 12345
  before do
    visit '/'
    fill_in 'name', with: 'George'
    click_button 'Submit'
  end
  scenario 'see the RPS options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end
  scenario 'making a choice' do
    click_button 'Rock'
    expect(page).to have_content '...Wise choice'
  end
  scenario 'computer chooses' do
    click_button 'Rock'
    message = find(:css, "#CPU").text
    expect(cpu_choice).to include message
  end

  scenario 'CPU is random' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Your enemy chose Scissors'
  end
 
  context 'end game' do
    before do
      srand(SEED)
    end

    scenario 'You win' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'You lose' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'You drew' do
      click_button 'Scissors'
      expect(page).to have_content 'You drew!'
    end
  end

  def cpu_choice
    [:rock, :paper, :scissors].map { |choice| "Your enemy chose #{choice.to_s.capitalize}" }
  end
end
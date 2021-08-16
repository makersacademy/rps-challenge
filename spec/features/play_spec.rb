require 'spec_helper'

feature 'gameplay' do
  
  before do
    visit '/'
    fill_in 'name', with: 'Superman'
    click_button 'Submit'
  end

  scenario 'See the shape options' do
    
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'

  end

  scenario 'Choosing a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'The computer should choose a random option' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(poss_responses).to include message
  end

  def poss_responses
    [:rock, :paper, :scissors].map { |shape| "The computer has chosen #{shape.to_s.capitalize}!"}
  end

end

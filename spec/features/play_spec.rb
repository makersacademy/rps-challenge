require './spec/spec_helper'

feature 'Playing RPS' do
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

  def cpu_choice
    [:rock, :paper, :scissors].map { |choice| "Your enemy chose #{choice.to_s.capitalize}" }
  end
end
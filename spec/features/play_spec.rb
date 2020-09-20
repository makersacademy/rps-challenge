require "./spec/web_helpers.rb"

feature 'RPS choices' do
  scenario 'are listed as buttons on the page' do
    sign_in_and_play
    page.find_button 'Rock'
    page.find_button 'Paper'
    page.find_button 'Scissors'
  end

  scenario 'returns confirmation when picking one' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content 'Xavier picked Rock!'
  end

  # scenario 'returns computer choice' do
  #   sign_in_and_play
  #   click_on 'Rock'
  #   expect(page).to have_content 'Computer picked Paper!'
  # end
end
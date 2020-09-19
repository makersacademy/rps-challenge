require './spec/features/web_helper'
feature 'Playing RPS' do
  scenario 'expect Rock button to be on page' do
  enter_name
  expect(page).to have_button "Rock"
  expect(page).to have_button "Paper"
  expect(page).to have_button "Scissors"

  end


end
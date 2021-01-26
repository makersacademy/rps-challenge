# frozen_string_literal: true

feature 'Selecting choice' do
  scenario 'All options available' do
    enter_name_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'Making rock selection' do
    enter_name_and_play
    click_button "Rock"
    expect(page).to have_content('Kelly chose Rock')
  end

  scenario 'Making paper selection' do
    enter_name_and_play
    click_button "Paper"
    expect(page).to have_content('Kelly chose Paper')
  end

  scenario 'Making rock selection' do
    enter_name_and_play
    click_button "Scissors"
    expect(page).to have_content('Kelly chose Scissors')
  end
end

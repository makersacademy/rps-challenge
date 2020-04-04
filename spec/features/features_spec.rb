require "./spec/spec_helper.rb"

feature 'entering player name' do
  scenario 'displays correct name' do
    sign_in
    expect(page).to have_content 'Volker vs. Random Walk'
  end
end

feature 'making a move' do
  scenario 'takes in human player move' do
    sign_in
    choose('rock')
    click_button('Submit')
    expect(page).to have_content 'Rock'
  end

  scenario 'generates a random move' do
    srand(12_345)
    sign_in
    choose('rock')
    click_button('Submit')
    expect(page).to have_content 'Rock vs. Scissors'
  end
  scenario 'Rock wins against Scissors' do
    srand(12_345)
    sign_in
    choose('rock')
    click_button('Submit')
    expect(page).to have_content 'Player 1 wins'
  end
end

feature 'return to beginning' do
  scenario 'complete game and restart' do
    srand(12_345)
    sign_in
    choose('rock')
    click_button('Submit')
    click_button('Return')
    sign_in
    expect(page).to have_content 'Volker vs. Random Walk'
  end
end

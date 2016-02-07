require 'capybara/rspec'

feature 'play functionality' do

  scenario 'can choose paper' do
    sign_in
    click_button "paper"
    expect(page).to have_content 'paper'
  end

  scenario 'can choose rock' do
    sign_in
    click_button "rock"
    expect(page).to have_content 'rock'
  end

  scenario 'can choose scissors' do
    sign_in
    click_button "scissors"
    expect(page).to have_content 'scissors'
  end
end

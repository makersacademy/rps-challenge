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

  scenario 'can choose lizard' do
    sign_in
    click_button "lizard"
    expect(page).to have_content 'lizard'
  end

  scenario 'can choose spock' do
    sign_in
    click_button "spock"
    expect(page).to have_content 'spock'
  end
end

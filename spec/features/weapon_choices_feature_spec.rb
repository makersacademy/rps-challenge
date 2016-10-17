require "spec_helper"

feature 'Weapon choices' do
  scenario 'User can choose scissors' do
    sign_in_and_select "Scissors"
    expect(page).to have_content "Tadas selected Scissors"
  end
  scenario 'User can choose rock' do
    sign_in_and_select "Rock"
    expect(page).to have_content "Tadas selected Rock"
  end
  scenario 'User can choose paper' do
    sign_in_and_select "Paper"
    expect(page).to have_content "Tadas selected Paper"
  end
end

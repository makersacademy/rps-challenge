require_relative '../spec_helper'

feature 'it allows a player to choose an option' do
  scenario 'chooses rock' do
    sign_in
    choose(:choice, option: "Rock")
    click_button "Submit"
    expect(page).to have_content "You have chosen Rock"
  end

  scenario 'chooses paper' do
    sign_in
    choose(:choice, option: "Paper")
    click_button "Submit"
    expect(page).to have_content "You have chosen Paper"
  end
end

feature 'it chooses an option for the computer' do
  scenario 'ai chooses rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return("rock")
    sign_in
    choose(:choice, option: "Rock")
    click_button "Submit"
    expect(page).to have_content "Your opponent chose rock"
  end

  scenario 'ai chooses paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return("paper")
    sign_in
    choose(:choice, option: "Rock")
    click_button "Submit"
    expect(page).to have_content "Your opponent chose paper"
  end
end

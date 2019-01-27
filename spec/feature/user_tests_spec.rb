require './rps'

RSpec.describe Rps do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to RPS")
  end

  scenario 'confirms we can enter name and be welcomed' do
    visit('/')
    fill_in "name", :with => "Bob"
    click_button "Choose weapon"
    expect(page).to have_content("Bob, please choose your weapon")
  end

  scenario 'confirms we got to results after picking a weapon' do
    visit('/')
    fill_in "name", :with => "Bob"
    click_button "Choose weapon"
    choose('weapon', option: 'rock')
    click_button "Fight!"
    expect(page).to have_content("Bob, you chose rock")
  end

end

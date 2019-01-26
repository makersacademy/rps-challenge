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

end

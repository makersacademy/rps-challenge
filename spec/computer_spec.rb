require './lib/computer'

feature 'computer selection' do
  scenario "I want to see what the computer has selected" do
    visit('/')
    fill_in "player_one_name", :with => "Matthew"
    click_button "submit"
    select 'Rock', from: 'choice'
    click_button "submit"
    computer = Computer.new
    allow(computer.weapon).to receive(:sample){ "Rock" }
    expect(page).to have_content 'Computer has selected Rock'
  end
end
require './lib/computer'

feature 'computer selection' do
  before :each do
  srand(4)
end

  scenario "I want to see what the computer has selected" do
    visit('/')
    fill_in "player_one_name", :with => "Matthew"
    click_button "submit"
    select 'Rock', from: 'choice'
    click_button "submit"
    computer = Computer.new
    allow(computer).to receive(:weapon)
    expect(page).to have_content 'Computer has selected Scissors'
  end
end
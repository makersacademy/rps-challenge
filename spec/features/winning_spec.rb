require './app.rb'

feature 'Winning' do
  scenario 'rock vs scissors' do
    visit ('/')
    fill_in "player_name", :with => "Zak"
    click_button "Submit name"
    allow(Kernel).to receive(:rand).and_return(2)
    click_button "rock"
    expect(page).to have_content 'Zak has won'
  end
  scenario 'paper vs rock' do
    visit ('/')
    fill_in "player_name", :with => "Zak"
    click_button "Submit name"
    allow(Kernel).to receive(:rand).and_return(0)
    click_button "paper"
    expect(page).to have_content 'Zak has won'
  end
  scenario 'paper vs scissors' do
    visit ('/')
    fill_in "player_name", :with => "Zak"
    click_button "Submit name"
    allow(Kernel).to receive(:rand).and_return(2)
    click_button "paper"
    expect(page).to have_content 'Zak has lost'
  end
end

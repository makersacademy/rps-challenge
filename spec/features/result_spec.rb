feature 'results page' do
  scenario 'declaring a drawn result' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Rock'

    computer = double(:computer)
    allow(computer).to receive(:move).and_return("Rock")
    p computer.move
    expect(page).to have_content("Draw!")
  end
end

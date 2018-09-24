feature 'results page' do
  scenario 'declaring a drawn result' do
    visit '/'
    fill_in 'marketeer1', with: 'Rory'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content("The Results are in!")
    # computer = double(:computer)
    # allow(computer).to receive(:move).and_return("Rock")
    # expect(page).to have_content("Draw!")
  end
end

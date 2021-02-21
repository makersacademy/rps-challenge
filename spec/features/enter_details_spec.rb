feature 'Enter names' do
  scenario 'submitting details and get confirmation' do
    visit('/')
    fill_in :name, with: 'James'
    page.choose 'rock'
    click_button 'Confirm'
    expect(page).to have_content 'James' 
  end
  scenario 'see the options available' do
    visit('/')
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
  scenario 'have to choose RP or S' do

  end

end 
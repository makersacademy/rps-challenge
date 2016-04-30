feature 'Choose option' do

  scenario 'Rock, Paper and Scissors options exist' do
    sign_in
    expect(page).to have_content('Choose Rock')
    expect(page).to have_content('Choose Paper')
    expect(page).to have_content('Choose Scissors')
  end

end

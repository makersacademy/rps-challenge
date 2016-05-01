feature 'Choose option' do

  scenario 'Rock, Paper and Scissors options exist' do
    sign_in
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

end

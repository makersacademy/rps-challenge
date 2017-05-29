feature 'computer make a selection' do
  scenario 'computer chooses a weapon' do
    srand(1234)
    sign_in
    click_button 'Rock'
    expect(page).to have_content('Computer chose Rock')
  end
end

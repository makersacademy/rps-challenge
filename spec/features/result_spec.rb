feature 'Informing the user of the result' do
  scenario 'Informing the user of their own selection' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Peter, you have chosen \'Rock\''
  end
end

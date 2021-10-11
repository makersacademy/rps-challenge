feature 'WEBPAGE: Enter names' do

  scenario 'Submitting names' do
    sign_in_and_play('Timmy')
    expect(page).to have_content 'Timmy'
  end
  
end
 
feature 'the computer opponent' do

  scenario 'makes a random choice' do
    sign_in
    click_button 'ROCK'
    expect(page).to have_content "Computer has chosen"
  end
end

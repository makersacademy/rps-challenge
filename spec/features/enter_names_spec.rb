
feature 'Enter names' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Select an option.'
  end
end

feature 'show options' do
  scenario 'selecting rps' do
    sign_in
    choose 'Vs Player!'
    click_button 'Submit'
    expect(page).to have_content 'Select your strategy!'
  end
end 

feature 'choosing' do
  scenario 'selecting rps' do
    sign_in
    choose 'Vs Player!'
    click_button 'Submit'
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Waiting for player 2... Edu => Rock VS =>'
  end
end 


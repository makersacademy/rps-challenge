def sign_in_and_play
  visit '/'
  within('form') do
    fill_in 'name', with: 'Name'
    click_button 'Submit'
  end
end

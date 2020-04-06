feature 'choose rock paper or scissors' do
  scenario 'select rock' do
    sign_in
    click_button('Rock')
    expect(page).to have_content('You entered Rock')
  end

  scenario 'select paper' do
    sign_in
    click_button('Paper')
    expect(page).to have_content('You entered Paper')
  end


scenario 'select Scissors' do
  sign_in
  click_button('Scissors')
  expect(page).to have_content('You entered Scissors')
  end
end


# Do I need tests for all of them? 
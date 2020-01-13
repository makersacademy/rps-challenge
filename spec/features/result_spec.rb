feature 'result page' do
  scenario 'The page asks the user to enter their name' do
    submit_name
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end

  scenario 'The page asks the user to enter their name' do
    submit_name
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'The page asks the user to enter their name' do
    submit_name
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end

end

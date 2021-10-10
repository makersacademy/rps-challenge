feature 'Enter player 1 name' do
  scenario 'Submitting player 1 name' do
    visit '/'
    fill_in :player_1_name, with: 'Kelly'
    click_button 'Submit'
    expect(page).to have_content 'Kelly vs. the computer'
  end
end

feature 'Make a choice and play a game against the computer' do
  scenario 'See your choice recorded' do
    visit '/'
    fill_in :player_1_name, with: 'Kelly'
    click_button 'Submit'
    page.choose('Rock')
    click_button 'Submit'
    expect(page).to have_content 'Kelly chose Rock'
  end

  scenario 'See computer choice recorded' do
    visit '/'
    fill_in :player_1_name, with: 'Kelly'
    click_button 'Submit'
    page.choose('Rock')
    click_button 'Submit'
    expect(page).to have_content 'Computer chose'
  end

  scenario 'See a winner stated' do
    visit '/'
    fill_in :player_1_name, with: 'Kelly'
    click_button 'Submit'
    page.choose('Rock')
    click_button 'Submit'
    expect(page).to have_content 'Result'
  end

end

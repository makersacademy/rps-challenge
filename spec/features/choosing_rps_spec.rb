feature 'choice is made and displayed on next screen' do
  scenario 'Rock is chosen' do
    visit '/'
    fill_in :player1, with: 'Yasmin'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content('Yasmin has chosen Rock')
  end

  scenario 'Scissors are chosen' do
    visit '/'
    fill_in :player1, with: 'Yasmin'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content('Yasmin has chosen Scissors')
  end

  scenario 'Paper is chosen' do
    visit '/'
    fill_in :player1, with: 'Yasmin'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content('Yasmin has chosen Paper')
  end
end

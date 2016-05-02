feature 'Selecting Game Mode' do
  scenario 'standard RPS is selected by default' do
    visit '/'
    expect(find_field 'rps').to be_checked
    expect(find_field 'rpssl').not_to be_checked
    click_button 'Submit'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).not_to have_content 'Spock'
    expect(page).not_to have_content 'Lizard'
  end

  scenario 'selecting RPSSL' do
    visit '/'
    choose 'rpssl'
    expect(find_field 'rps').not_to be_checked
    expect(find_field 'rpssl').to be_checked
    click_button 'Submit'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Spock'
    expect(page).to have_content 'Lizard'
  end
end
feature 'Selecting Game Mode' do
  scenario 'standard RPS is selected by default' do
    visit '/'
    expect(find_field 'rps').to be_checked
    expect(find_field 'rpsls').not_to be_checked
    click_button 'Submit'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).not_to have_content 'Lizard'
    expect(page).not_to have_content 'Spock'
  end

  scenario 'selecting RPSLS' do
    visit '/'
    choose 'rpsls'
    expect(find_field 'rps').not_to be_checked
    expect(find_field 'rpsls').to be_checked
    click_button 'Submit'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Lizard'
    expect(page).to have_content 'Spock'
  end
end
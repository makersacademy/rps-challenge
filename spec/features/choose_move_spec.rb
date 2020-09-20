feature 'Choose move' do
  scenario 'Display message and buttons to choose move on page load' do
    enter_name_and_start
    expect(page).to have_content('Choose your move')
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'Goes to result page when player chooses move' do
    enter_name_and_start
    click_button 'Rock'
    expect(page).to have_current_path('/result')
  end
end
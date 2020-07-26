feature 'printing results' do
  scenario 'player played, results are displayed' do
    sign_in_and_play
    click_button 'Play'
    expect(page).to have_content('Results:')
  end
end
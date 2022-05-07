feature 'Player choice' do
  scenario 'Player choice is printed on /result' do
    sign_in_and_submit_name
    page.choose('rock')
    click_button 'Submit'
    expect(page).to have_content 'Jimmy picked Rock'
  end
end
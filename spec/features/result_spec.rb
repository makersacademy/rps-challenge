feature 'Game result' do
  scenario 'Prints the outcome of the game on /result' do
    sign_in_and_submit_name
    page.choose('rock')
    click_button 'Submit'
    
    expect(has_expected_output).to be true 
  end
end

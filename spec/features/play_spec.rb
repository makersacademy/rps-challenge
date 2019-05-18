feature 'selecting rock, paper or scissors' do
  scenario 'should show your pick' do
    sign_in
    select 'Rock', from: 'pick'
    click_button 'Submit'
    expect(page).to have_content 'You picked rock.'
  end
end

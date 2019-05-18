feature 'selecting rock, paper or scissors' do
  scenario 'should show your pick' do
    visit '/'
    fill_in 'name', with: 'Laurence'
    click_button 'Submit'
    select 'Rock', from: 'rps'
    click_button 'Submit'
    expect(page).to have_content 'You picked rock.'
  end
end

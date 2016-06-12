feature 'Register name' do

  scenario 'entering name' do
    visit '/'
    fill_in 'name', with: 'Steve'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Steve to Rock Paper Scissors!'
  end

end

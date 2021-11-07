
feature RockPaperScissors do
  scenario 'registering a name' do
    visit '/'
    fill_in :name, with: 'Kate'
    click_button 'Submit'
    expect(page).to have_content('Thank you, Kate')
  end  
end

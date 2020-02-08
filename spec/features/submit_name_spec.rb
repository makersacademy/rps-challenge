feature 'can submit name' do 
  scenario 'should be able to submit name and see on play page' do 
    visit ('/')
    fill_in 'name', with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content "Welcome Joe, Lets play!"
  end 
end 
feature 'can submit name' do 
  scenario 'should be able to submit name and see on play page' do 
    sign_in
    expect(page).to have_content "Welcome Joe, Lets play!"
  end 
end 
 feature 'register a name' do
   scenario 'register and return a name' do
     visit '/'
     fill_in 'name', with: 'Sean'
     click_button 'Submit'
     expect(page).to have_content "Sean"
   end
 end

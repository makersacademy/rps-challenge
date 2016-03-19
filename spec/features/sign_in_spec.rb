 feature 'Sign in' do
   scenario 'accepts username' do
     visit '/'
     fill_in :user, with: 'Bob'
     click_button 'Sign me in!'
     expect(page).to have_content("Welcome Bob, ready to battle?")
   end
 end

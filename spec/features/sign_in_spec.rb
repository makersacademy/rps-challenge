 feature 'Sign in to play' do
   scenario 'accepts username' do
     visit '/'
     fill_in :user, with: 'Bob'
     click_button 'Sign me in!'
     expect(page).to have_content("Welcome Bob, ready to battle?")
   end

   scenario 'has r/p/s options' do
     visit '/'
     fill_in :user, with: 'Bob'
     click_button 'Sign me in!'
     expect(page).to have_button("Rock")
   end
   
 end

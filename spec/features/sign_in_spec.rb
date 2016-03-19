 feature 'Sign in to play' do
   scenario 'accepts username' do
     sign_in_to_play
     expect(page).to have_content("Welcome Bob, ready to battle?")
   end
 end

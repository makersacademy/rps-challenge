describe Rps, :type => :feature do

feature 'sign in' do
   scenario 'User can sign in' do
     sign_in_and_play
     expect(page).to have_text('Flooba')
   end
  end
end

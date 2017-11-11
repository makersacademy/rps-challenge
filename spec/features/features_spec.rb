describe Rps, :type => :feature do

feature 'sign in' do
   scenario 'User can sign in' do
     visit '/'
     fill_in 'name', with: 'Flooba'
     click_button 'Play'
     expect(page).to have_text('Flooba')
   end
  end
end

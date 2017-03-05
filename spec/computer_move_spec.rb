require './lib/choice'
require './game'
 describe 'computer_move' do
   it "checks the computer chooses rock,paper or scissors" do
     visit('/')
     sign_in
     click_button('Rock')
     expect(page).to have_content(@computer)
   end

   it "checks the computer chooses rock,paper or scissors" do
     visit('/')
     sign_in
     click_button('Scissors')
     expect(page).to have_content(@computer)
   end

   it "checks the computer chooses rock,paper or scissors" do
     visit('/')
     sign_in
     click_button('Paper')
     expect(page).to have_content(@computer)
   end
 end

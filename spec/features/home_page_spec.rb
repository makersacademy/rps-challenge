feature 'Home page test' do
   scenario 'Loads the home page. Website running' do
     visit('/')
     expect(page).to have_content("LET'S PLAY ROCK PAPER SCISSORS")
   end
 end



feature 'Welcome Screen' do
  scenario 'User will be welcomed and asked to enter name' do
    visit '/' 
    expect(page).to have_content("Enter Your Name:")
  end 
end 

feature 'Name' do
  scenario 'Name will be displayed on the Game screen' do
    game_ready
    expect(page).to have_content("testplayer")
  end 
end 

feature 'Game' do
  arr1 = ['rock', 'paper', 'scissors']
  before do
    game_ready
  end
  arr1.each  do |x|
    scenario 'There will be a ' + x + ' selection button' do
      expect(page).to have_button(x)
    end 
    scenario 'You will be sent to a result page with New Game button after ' + x + ' click' do
      click_button x
      expect(page).to have_button("New Game")
    end
  end
end

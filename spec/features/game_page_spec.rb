feature 'user can play a game of rock paper scissors with the computer' do

  before(:each) do 
    sign_in
  end

  feature 'user can choose rock, paper or scissors' do
    scenario 'user can select rock' do 
      click_button('ROCK')
      expect(page).to have_content 'Patos: ROCK'
    end

    scenario 'user can select paper' do 
      click_button('PAPER')
      expect(page).to have_content 'Patos: PAPER'
    end

    scenario 'user can select scissors' do 
      click_button('SCISSORS')
      expect(page).to have_content 'Patos: SCISSORS'
    end
  end

  # should i be stubbing on capybara? because it's not testing logic?
  feature 'computer generates a move' do
    scenario 'after user selects their move, the computer presents their move' do
      click_button('ROCK')
      expect(page).to have_content 'Computer: PAPER'
    end
  end
end

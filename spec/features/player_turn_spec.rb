feature 'Playing RPS game' do 
  before do 
    start_game
  end
  scenario 'show three options for player turn' do ##the marketeer will be presented the choices (rock, paper and scissors)

    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to_not have_content 'Sinatra'
  end
  
  scenario 'can choose one option' do # the marketeer can choose one option
   
    click_button 'Rock'
    expect(page).to have_content 'Gwen chose Rock'
  end  
    #the game will choose a random option
  scenario 'computer chooses random option' do 
    srand(54321) #srand with this number means the random selection of .sample will always return Paper
    click_button 'Rock'
    expect(page).to have_content 'Your opponent chose Paper'
  end
    #a winner will be declared 
    scenario 'player wins' do
      click_button 'Rock'
      srand(54321)
      expect(page).to have_content 'Gwen wins!'
    end

    scenario 'declares winner' do
      click_button 'Rock'
      computer_choice = 
      expect(page).to have content 
    end
  end
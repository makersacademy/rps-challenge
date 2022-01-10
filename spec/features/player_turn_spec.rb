feature 'Playing RPS game' do 
  SEED_PAPER = 54321
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
    #the game will choose a random option of Rock, Paper or Scissors
  
    scenario 'computer chooses either Rock, Paper, Scissors' do 
      start_game
      computer_message = find(:css, '#computer_choice').text #retrieves an element from the page. :css is the selector type, '#computer choice' is the locator string. .text retrieves the text of this element and returns string
      expect(computer_options).to include computer_message
    end

  scenario 'computer chooses random option' do 
    srand(SEED_PAPER) #srand with this number means the random selection of .sample will always return Paper
    click_button 'Rock'
    expect(page).to have_content 'Your opponent chose Paper'
  end
    #a winner will be declared 
    context 'ending game' do 
      before do
        srand(SEED_PAPER)
      end

      scenario 'player wins and winner declared' do
        click_button 'Rock'
        expect(page).to have_content 'You win'
      end

      scenario 'player loses and its declared' do
        click_button 'Scissors'
        expect(page).to have_content 'You lose!'
      end

      scenario 'game is a draw and its declared' do
        click_button 'Paper'
        expect(page).to have_content 'It is a draw!'
      end

    end


  end
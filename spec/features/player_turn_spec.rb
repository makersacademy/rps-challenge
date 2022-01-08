feature 'Playing RPS game' do 

  scenario 'show three options for player turn' do ##the marketeer will be presented the choices (rock, paper and scissors)
    start_game
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to_not have_content 'Sinatra'
  end
  
  scenario 'can choose one option' do # the marketeer can choose one option
    start_game
    click_button 'Rock'
    expect(page).to have_content 'Gwen chose Rock'
  end  
    #the game will choose a random option
  scenario 'computer chooses random option' do 
    start_game
    computer_message = find(:css, '#computer_choice').text #retrieves an element from the page. :css is the selector type, '#computer choice' is the locator string. .text retrieves the text of this element and returns string
    expect(computer_options).to include computer_message
  end
    #a winner will be declared
  end
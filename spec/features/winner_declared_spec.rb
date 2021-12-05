feature 'declares a winner' do
  scenario 'once the computer chooses a tool, a winner is declared' do
    visit('/choose_tool')
    page.choose('tool', option: 'Rock')
    click_button 'Submit'
    @computer_tool = "Scissors"
    
    values = ['Computer wins', 'Player 1 wins', "It's a draw"]
    text = find("div#winner").text
    expect(values).to include text
  end 
end

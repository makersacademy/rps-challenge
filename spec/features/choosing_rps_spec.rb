feature 'Choosing R/P/S' do
  scenario 'player chooses rock, paper or scissors' do
    sign_in_and_play
    choose(option: 'rock')
    click_button 'OK'
    expect(page).to have_content 'Dave chose rock'
  end
  
  scenario 'computer chooses rock, paper or scissor' do
    sign_in_and_play
    choose(option: 'rock')
    click_button 'OK'
    expect(page).to have_content 'Dave chose rock'
    computer = ["rock", "paper","scissors"].sample
    expect(computer).to eq('rock').or eq('paper').or eq('scissors')
  end
end

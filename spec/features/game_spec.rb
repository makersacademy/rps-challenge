feature 'Play the game' do

  before do
    sign_in
  end

  scenario 'pick between 5 options' do
    expect(page).to have_content "Pick a value"
    find('input.lizard').click  
    expect(page).to have_content "You chose Lizard"
    find('input.paper').click  
    expect(page).to have_content "You chose Paper"
    find('input.rock').click  
    expect(page).to have_content "You chose Rock"
    find('input.scissors').click  
    expect(page).to have_content "You chose Scissors"
    find('input.spock').click  
    expect(page).to have_content "You chose Spock"
  end
end
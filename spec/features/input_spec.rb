feature 'Testing Inputs' do
  scenario 'Can enter the name of the player and progress to next page' do
    log_in
    expect(page).to have_content 'Select your move'
  end
  scenario 'Can choose either rock, paper or scissors' do 
    log_in
    click_button 'rock'
    expect(page).to have_content 'Game result'
  end
end
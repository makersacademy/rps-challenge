feature 'Playing the game' do

  scenario 'have a winner' do
    sign_in
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'rock'
    expect(page).to have_content "The winner is... \nVin Diesel!"
  end

  scenario 'have a winner text' do
    sign_in
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'rock'
    expect(page).to have_content "(and as it always has) Rock crushes Scissors"
  end

  scenario 'tie' do
    sign_in
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'rock'
    expect(page).to have_content "It's a tie!"
  end

end

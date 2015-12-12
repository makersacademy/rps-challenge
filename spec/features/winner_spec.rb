feature 'Declaring the round winner' do
  scenario 'Rock beats scissors' do
    sign_in_and_play
    click_button('Rock')
    click_button('Outcome')
    allow(Kernel).to receive(:rand).and_return(2)
    expect(page).to have_content "Ed won this round!"
  end

  scenario 'A draw' do
    sign_in_and_play
    click_button('Scissors')
    click_button('Outcome')
    allow(Kernel).to receive(:rand).and_return(2)
    expect(page).to have_content "This round was a draw!"
  end

end

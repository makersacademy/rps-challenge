feature "shows the the Game's choice" do
  scenario 'user can see what the Game chose' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 1 }
    click_button 'Rock'
    expect(page).to have_content 'And I chose... Rock!'
  end
end

feature 'win, lose or tie' do
  scenario 'the user and the game tie' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 1 }
    click_button 'Rock'
    expect(page).to have_content "It's a tie!"
  end

  scenario 'the user wins' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 3 }
    click_button 'Rock'
    expect(page).to have_content "You win!"
  end

  scenario 'the user loses' do
    sign_in_and_play
    allow(Kernel).to receive(:rand) { 2 }
    click_button 'Rock'
    expect(page).to have_content "You lose!"
  end
end

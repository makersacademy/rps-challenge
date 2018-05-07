feature "User Details" do
  scenario "Can submit their name" do
    sign_in
    expect(page).to have_text 'Rock, Paper or Scissors, Charlene?'
  end
end

feature "Playing Game" do
  scenario "Can choose rock, paper or scissors" do
    sign_in
    click_button 'Rock'
    expect(page).to have_text 'You chose Rock.'
  end

  scenario "Bot selects from rock, paper or scissors " do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button 'Rock'
    expect(page).to have_text 'Bot chose Scissors.'
  end

  scenario "Player wins against bot" do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    click_button 'Rock'
    expect(page).to have_text 'Player wins!'
  end
end

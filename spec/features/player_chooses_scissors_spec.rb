feature "Player chooses scissors" do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'computer chooses rock' do
    allow(Kernel).to receive(:rand).and_return(1)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose ROCK! Computer wins!'
  end

  scenario 'computer chooses paper' do
    allow(Kernel).to receive(:rand).and_return(4)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose PAPER! Vic wins!'
  end

  scenario 'computer chooses scissors' do
    allow(Kernel).to receive(:rand).and_return(7)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose SCISSORS! This round is a draw...'
  end

end

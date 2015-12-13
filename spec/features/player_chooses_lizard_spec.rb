feature "Player chooses lizard" do

  # Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

  scenario 'the game allows you to chose lizard' do
    visit_page_and_register
    click_button('LIZARD!')
    expect(page).to have_content 'Vic chose LIZARD!'
  end

  scenario 'Lizard loses to rock' do
    allow(Kernel).to receive(:rand).and_return(1)
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose ROCK! Computer wins!'
  end

  scenario 'Lizard beats paper' do
    allow(Kernel).to receive(:rand).and_return(4)
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose PAPER! Vic wins!'
  end

  scenario 'Lizard loses to scissors' do
    allow(Kernel).to receive(:rand).and_return(7)
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose SCISSORS! Computer wins!'
  end

  scenario 'Lizard beats Spock' do
    allow(Kernel).to receive(:rand).and_return(10)
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose SPOCK! Vic wins!'
  end

  scenario 'Lizard draws to lizard' do
    allow(Kernel).to receive(:rand).and_return(13)
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose LIZARD! This round is a draw...'
  end



end

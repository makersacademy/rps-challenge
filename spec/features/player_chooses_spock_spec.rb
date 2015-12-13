feature "Player chooses Spock" do

  # Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

  scenario 'the game allows you to chose Spock' do
    visit_page_and_register
    click_button('SPOCK!')
    expect(page).to have_content 'Vic chose SPOCK!'
  end

  scenario 'the game allows you to chose lizard' do
    visit_page_and_register
    click_button('LIZARD!')
    expect(page).to have_content 'Vic chose LIZARD!'
  end

  scenario 'Spock beats rock' do
    allow(Kernel).to receive(:rand).and_return(1)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose ROCK! Vic wins!'
  end

  scenario 'Spock loses to paper' do
    allow(Kernel).to receive(:rand).and_return(4)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose PAPER! Computer wins!'
  end

  scenario 'Spock beats scissors' do
    allow(Kernel).to receive(:rand).and_return(7)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose SCISSORS! Vic wins!'
  end

  scenario 'Spock draws with Spock' do
    allow(Kernel).to receive(:rand).and_return(10)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose SPOCK! This round is a draw...'
  end



end

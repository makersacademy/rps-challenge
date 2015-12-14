feature "Player chooses lizard" do

  # Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

  scenario 'the game allows you to chose lizard' do
    visit_page_and_register
    click_button('LIZARD!')
    expect(page).to have_content 'Vic chose LIZARD!'
  end

  scenario 'Lizard loses to rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('ROCK!')
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose ROCK! Computer wins!'
  end

  scenario 'Lizard beats paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('PAPER!')
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose PAPER! Vic wins!'
  end

  scenario 'Lizard loses to scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('SCISSORS!')
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose SCISSORS! Computer wins!'
  end

  scenario 'Lizard beats Spock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('SPOCK!')
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose SPOCK! Vic wins!'
  end

  scenario 'Lizard draws to lizard' do
    allow_any_instance_of(Array).to receive(:sample).and_return('LIZARD!')
    visit_page_and_register
    click_button 'LIZARD!'
    expect(page).to have_content 'Computer chose LIZARD! This round is a draw...'
  end



end

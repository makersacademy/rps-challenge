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
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose ROCK! Vic wins!'
  end

  scenario 'Spock loses to paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose PAPER! Computer wins!'
  end

  scenario 'Spock beats scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose SCISSORS! Vic wins!'
  end

  scenario 'Spock draws with Spock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    visit_page_and_register
    click_button 'SPOCK!'
    expect(page).to have_content 'Computer chose SPOCK! This round is a draw...'
  end



end

feature "Player chooses scissors" do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'computer chooses rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose ROCK! Computer wins!'
  end

  scenario 'computer chooses paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose PAPER! Vic wins!'
  end

  scenario 'computer chooses scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit_page_and_register
    click_button 'SCISSORS!'
    expect(page).to have_content 'Computer chose SCISSORS! This round is a draw...'
  end

end

feature "Player chooses paper" do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'computer chooses rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('ROCK!')
    visit_page_and_register
    click_button 'PAPER!'
    expect(page).to have_content 'Computer chose ROCK! Vic wins!'
  end

  scenario 'computer chooses paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('PAPER!')
    visit_page_and_register
    click_button 'PAPER!'
    expect(page).to have_content 'Computer chose PAPER! This round is a draw...'
  end

  scenario 'computer chooses scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('SCISSORS!')
    visit_page_and_register
    click_button 'PAPER!'
    expect(page).to have_content 'Computer chose SCISSORS! Computer wins!'
  end

end

feature 'Playing the game' do
  scenario 'when I choose \'rock\' I am told I have won' do
    allow_any_instance_of(Array).to receive(:sample) { :scissors }
    single_sign_in
    click_button 'rock'
    expect(page).to have_content 'You won! Weapon: rock'
  end

  scenario 'when I choose \'paper\' I am told I have lost' do
    allow_any_instance_of(Array).to receive(:sample) { :scissors }
    single_sign_in
    click_button 'paper'
    expect(page).to have_content 'You lost :( Weapon: paper'
  end

  scenario 'when I choose \'scissors\' I am told it\'s a draw' do
    allow_any_instance_of(Array).to receive(:sample) { :scissors }
    single_sign_in
    click_button 'scissors'
    expect(page).to have_content 'It\'s a draw! Weapon: scissors'
  end
end

feature 'Play RPS' do

  let(:computer) { double(Computer.new) }

  scenario 'Player can choose Rock button' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Jack picked Rock'
  end

  scenario 'Computer can make a random choice' do
    allow_any_instance_of(Computer).to receive(:move).and_return 'Paper'
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer picked Paper'
  end

  scenario 'Win a game of rps' do
    allow_any_instance_of(Computer).to receive(:move).and_return 'Paper'
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You win'
  end
end 

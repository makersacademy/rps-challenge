
feature 'play the game of rock paper scissors' do

  before(:each) do
    sign_in_and_play
  end

  scenario 'scissors cut paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    play_scissors
    expect(page).to have_content 'Hulk wins!'
  end

  scenario 'scissors draw with scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    play_scissors
    expect(page).to have_content 'Draw!'
  end

  scenario 'scissors lose to rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    play_scissors
    expect(page).to have_content 'Hulk loses!'
  end

end
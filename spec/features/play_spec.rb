feature 'selecting rock, paper or scissors' do
  scenario 'should show your pick' do
    sign_in_and_play
    expect(page).to have_content 'Laurence picked rock.'
  end

  scenario "should show the computer's pick" do
    allow_any_instance_of(Computer).to receive(:result).and_return('rock')
    sign_in_and_play
    expect(page).to have_content 'The computer picked rock.'
  end
end

feature 'losing' do
  scenario 'should display a message saying the computer wins' do
    allow_any_instance_of(Computer).to receive(:result).and_return('paper')
    sign_in_and_play
    expect(page).to have_content 'The computer wins!'
  end
end

feature 'winning' do
  scenario 'should display a message saying the user wins' do
    allow_any_instance_of(Computer).to receive(:result).and_return('scissors')
    sign_in_and_play
    expect(page).to have_content 'Laurence wins!'
  end
end

feature 'drawing' do
  scenario "should display a message saying it's a draw" do
    allow_any_instance_of(Computer).to receive(:result).and_return('rock')
    sign_in_and_play
    expect(page).to have_content "It's a draw!"
  end
end

feature 'testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_text 'Welcome to Rock Paper Scissors!'
  end
end

feature 'entering names' do
  scenario 'player can submit name' do
    sign_in
    expect(page).to have_text 'Nat'
  end
end

feature 'winner declared' do
  it 'when player submits "rock" told they have won' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
    sign_in
    fill_in :player_choice, with: 'rock'
    click_button 'Play'
    expect(page).to have_text 'Hurrah, you won!'
  end
end

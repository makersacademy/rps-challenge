feature 'bot selects a random move' do
  it 'random move shows on results screen' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content('Bot chose: scissors')
  end
end

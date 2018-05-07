feature 'bot selects a random move' do
  it 'random move shows on results screen' do
    allow_any_instance_of(Bot).to receive(:rand).and_return(0)
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content('RPS_Bot chose: rock')
  end
end

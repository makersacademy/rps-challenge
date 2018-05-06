feature 'player one wins' do
  scenario 'win message appears on results page' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content('Bob is the winner!')
  end
end

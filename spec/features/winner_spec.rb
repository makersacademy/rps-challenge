feature 'testing players can win' do
  scenario 'player 1 can win' do
    allow_any_instance_of(Computer).to receive(:ai).and_return(:Scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You won'
  end
end

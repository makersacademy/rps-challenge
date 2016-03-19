feature 'Result page: winner decleration' do

  scenario '0.0. Annouce winner' do
    sign_in_and_play_p1
    allow(RPS.game.p2).to receive(:choose_random).and_return('SCISSORS')
    allow(RPS.game.p2).to receive(:move).and_return('SCISSORS')
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Misa wins!')
  end
end

feature 'the final outcome' do
  scenario 'when player1 has chosen the object and player2 has randomly picked up his' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    page.choose('Scissors')
    click_button ('Submit')
    expect(page).to have_content "It's a tie! There is no winner. So boring."
  end
end

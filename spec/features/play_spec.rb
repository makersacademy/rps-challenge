feature 'Play' do
  scenario "when player submits 'Rock' and wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    select('Rock', from: 'What would you like to play with?')
    click_button('Play')
    expect(page).to have_content('Vlad wins!')
  end
  
  scenario "When player submits 'Scissors' and loses" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    select('Scissors', from: 'What would you like to play with?')
    click_button('Play')
    expect(page).to have_content('A.I. wins...better luck next time!')
  end

  scenario "When player submits 'Paper' and it is a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    select('Paper', from: 'What would you like to play with?')
    click_button('Play')
    expect(page).to have_content('It is a draw')
  end

end

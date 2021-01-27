feature 'Buttons to go back and play again' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select "Rock", from: 'choice'
    click_button 'Play'
  end

  scenario 'you can play again' do
    expect(page).to have_button('Try Again!')
    expect(page).to have_button('Play from the beginning!')
  end
end

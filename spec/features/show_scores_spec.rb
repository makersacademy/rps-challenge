feature 'Show scores' do

  scenario 'Player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    choose('paper')
    click_button('Submit')
    expect(page).to have_content('Player: 1')
  end
end

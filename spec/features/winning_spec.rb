
feature 'Winning' do
  scenario 'winning a round' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content 'You won!'
  end
end

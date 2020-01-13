feature 'Take your pick' do
  scenario 'player can click rock button' do
    submit_name
    expect(page).to have_button('Rock')
  end
  scenario 'player can click Paper button' do
    submit_name
    expect(page).to have_button('Paper')
  end
  scenario 'player can click Scissors button' do
    submit_name
    expect(page).to have_button('Paper')
  end
end

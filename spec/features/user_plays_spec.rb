feature 'Play' do
  scenario 'should raise an error' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content 'Error! A name must be entered'
  end

  scenario 'player submit a name' do
    sigin_in_as_sam
    expect(page).to have_content 'Sam'
  end

  scenario 'user can click radio button' do
    sign_in_and_play
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
  end
end

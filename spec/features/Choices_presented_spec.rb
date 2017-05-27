feature 'View choices' do
  scenario 'see the choices you have to select from' do
    sign_in_and_play
    expect(page).to have_content 'Rock / Paper / Scissors'
  end

  scenario 'should be able to select a choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You are Rock'
  end
end

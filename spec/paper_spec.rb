feature 'Player choice' do
  scenario 'Player chooses Paper' do
    sign_in_and_play
    click_button 'Paper'
    visit '/paper'
    expect(page).to have_content 'Dave chose Paper'
  end
end

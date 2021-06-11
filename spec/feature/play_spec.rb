feature 'playing the game' do
  before do
    visit '/'
    fill_in 'name', with: 'Mike'
    click_button 'Submit'
  end
  scenario 'see the moves' do

    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
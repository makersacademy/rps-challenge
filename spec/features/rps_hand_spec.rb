feature 'Hand' do
  scenario 'can choose between rock, paper and scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Fran chose Rock!'
  end
end

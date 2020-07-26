feature 'make selection' do
  scenario 'player selects Rock and is taken to result page' do
    sign_in
    select('Rock', from: 'option')
    click_button 'Play!'
    expect(page).to have_content 'You chose: Rock'
  end
end

feature 'make selection' do
  scenario 'player selects Paper and is taken to result page' do
    sign_in
    select('Paper', from: 'option')
    click_button 'Play!'
    expect(page).to have_content 'You chose: Paper'
  end
end

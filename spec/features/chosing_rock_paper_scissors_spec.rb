feature 'chosing rock paper or scissors' do

  scenario 'marketeer is chosing rock' do
    register_name
    click_button 'Rock'
    expect(page).to have_content('Alex choice: Rock')
  end

  scenario 'marketeer is chosing paper' do
    register_name
    click_button 'Paper'
    expect(page).to have_content('Alex choice: Paper')
  end

  scenario 'marketeer is chosing scissors' do
    register_name
    click_button 'Scissors'
    expect(page).to have_content('Alex choice: Scissors')
  end

end

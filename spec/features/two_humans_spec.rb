require './app'

describe 'Two Humans', type: :feature do
  it 'allows users to register two human players' do
    visit '/'
    expect(page).to have_field 'player2'
  end

  it 'can complete game' do
    visit '/'
    fill_in 'name', with: 'Bob'
    check 'player2' 
    fill_in 'name2', with: 'Tom'
    click_button 'Go' 
    expect(page).to have_content 'Tom'
  end
end

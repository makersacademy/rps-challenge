require './app'

describe 'Opponent makes their move', type: feature do
  it 'shows in the arena' do
    sign_in_and_start
    choose 'choose_rock'
    click_button 'Choose'
    srand(3)
    expect(page).to have_content 'The winner is Bob'
  end
end

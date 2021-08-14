require './app'

describe 'New Game', type: :feature do
  it 'can direct from arena back to index' do
    sign_in_and_start
    choose 'choose_rock'
    click_button 'Fight'
    click_on 'New Game'
    expect(page).to have_current_path '/'
  end
end

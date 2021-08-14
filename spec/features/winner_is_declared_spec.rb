require './app'

describe 'Winner is declared', type: :feature do
  it 'shows a result' do
    sign_in_and_start
    choose 'choose_rock'
    click_button 'Fight'
    expect(page).to have_css('div#result')
  end
end

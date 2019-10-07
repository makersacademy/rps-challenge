feature 'result is displayed' do
  scenario 'player name and result are displayed' do
    visit('/')
    fill_in(:player_name, with: 'Clare')
    click_button('Go!')
    select 'Rock', :from => :player_move
    click_button('Go!')
    expect(page).to have_content('Clare' && 'ROCK')
  end
end

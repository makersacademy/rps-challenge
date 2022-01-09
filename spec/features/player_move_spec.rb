feature 'Player picks a move' do
  before { fill_name_and_submit }
  scenario 'Player chooses rock' do
    click_on 'rock'
    expect(page).to have_content('Rock')
  end
end
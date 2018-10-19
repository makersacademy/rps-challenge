feature 'result' do

  before do
    submit_name
  end

  scenario 'game play' do
    click_button 'Rock'
    expect(page).to have_content 'winner'
  end

end

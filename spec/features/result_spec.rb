feature 'result' do

  before do
    visit '/result'
  end

  scenario 'returns win or lose message' do
    expect(page).to have_content 'Restart the game'
  end
end

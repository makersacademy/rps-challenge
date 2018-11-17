feature 'result' do

  before do
    visit '/result'
  end

  scenario 'returns win or lose message' do
    expect(page).to have_content 'win or lose message'
  end
end

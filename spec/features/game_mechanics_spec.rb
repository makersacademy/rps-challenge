feature 'Game Mechanics' do
  before do
    visit('/')
    fill_in :player_name, with: 'Rango'
    click_button 'Submit'
    click_button 'Paper'
  end

  context 'Result is evaluated' do
    scenario 'computer plays random option' do
      expect(page).to have_content 'win'
    end
  end
end

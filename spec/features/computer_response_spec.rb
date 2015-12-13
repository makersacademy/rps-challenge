describe 'User Stories' do
  before do
    visit '/'
    fill_in 'name', with: 'Andrew'
    click_button('Submit')
  end

  feature 'Computer can respond' do
    scenario 'computer response is displayed' do
      choose('rock')
      click_button('I have chosen')
      allow(Kernel).to receive(:rand).and_return(0)
      click_button('OK')
      expect(page).to have_content('Computer responds with rock')
    end
  end

end

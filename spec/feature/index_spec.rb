describe 'Entry Page', type: :feature do

  before do
    register_name
  end

  context 'I would like to register my name before playing an online game' do
    
    it 'Show greeting' do
      expect(page).to have_content('Welcome to RPS, Please enter your Name and click "Play"')
    end

  end

end
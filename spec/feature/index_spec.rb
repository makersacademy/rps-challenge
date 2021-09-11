describe 'Entry Page', type: :feature do

  context 'I would like to register my name before playing an online game' do
    
    let(:player_output) { "Ed vs Computer" }

    it 'Show greeting' do
      visit('/')
      expect(page).to have_content('Welcome to RPS, Please enter your Name and click "Play"')
    end

    it 'Shows name after submit' do
      register_name
      expect(page).to have_content(player_output)
    end

    it 'shows options' do
      register_name
      expect(click_button('rock'))
      register_name
      expect(click_button('paper'))
      register_name
      expect(click_button('scissors'))
    end

  end

  context 'I would like to be able to play rock/paper/scissors' do

    let(:rock) {"rock"}
    let(:paper) {"paper"}
    let(:scissors) {"scissors"}

    

  end

end
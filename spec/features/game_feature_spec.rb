require_relative 'feature_spec_helper.rb'
require './models/computer.rb'

feature 'Play game' do
  context 'Given that the player has registered, ' do
    before(:each) do
      player_name = 'Simon'
      register_player(player_name: player_name)
    end

    def self.test_move_option_displayed(expected_option:)
      scenario "Should display #{expected_option} option" do
        expect(page.find_by_id('move_options')).to have_content(expected_option) 
      end
    end

    test_move_option_displayed(expected_option: 'Rock')

    test_move_option_displayed(expected_option: 'Paper')

    test_move_option_displayed(expected_option: 'Scissors')

    describe 'When player selects an option and selects to play, ' do
      before(:each) do
        choose('rock')
      end

      def self.test_result_message(expected_result:, expected_message:, computer_move:)

        scenario "Should, if result is #{expected_result}, inform the player of the result" do
          no_for_computer_win_move = Computer::MOVE_OPTIONS.find_index(computer_move)
          allow(Computer).to receive(:rand).and_return(no_for_computer_win_move)
  
          click_button("play")
  
          expect(page).to have_content(expected_message) 
        end
        
      end

      test_result_message(
        expected_result: 'player loss',
        expected_message: 'SUCK IT, LOSER!', 
        computer_move: 'paper'
      )

      test_result_message(
        expected_result: 'player win',
        expected_message: 'Truly, you are the champion.', 
        computer_move: 'scissors'
      )

      test_result_message(
        expected_result: 'draw',
        expected_message: 'A draw? I THINK NOT! WE WILL BATTLE TILL TIME DOTH END!', 
        computer_move: 'rock'
      )
    end
  end
end

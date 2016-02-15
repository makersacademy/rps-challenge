require 'calculator'

describe Calculator do

  subject(:calculator) { described_class.new }
  let(:computer) { double :computer}

  describe '#calculate_winner' do

    it 'responds to calculate_winner' do
      expect(calculator).to respond_to(:calculate_winner)
    end

    context 'player plays Rock' do

      it 'correctly calculates computer plays Rock' do
        allow(computer).to receive(:choose_weapon).and_return (:Rock)
        $player_name = 'Marketeer'
        $player_weapon = :Rock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Nobody'
      end

      it 'correctly calculates computer plays Paper' do
        allow(computer).to receive(:choose_weapon).and_return (:Paper)
        $player_name = 'Marketeer'
        $player_weapon = :Rock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Scissors' do
        allow(computer).to receive(:choose_weapon).and_return (:Scissors)
        $player_name = 'Marketeer'
        $player_weapon = :Rock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Lizard' do
        allow(computer).to receive(:choose_weapon).and_return (:Lizard)
        $player_name = 'Marketeer'
        $player_weapon = :Rock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Spock' do
        allow(computer).to receive(:choose_weapon).and_return (:Spock)
        $player_name = 'Marketeer'
        $player_weapon = :Rock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

    end

    context 'player plays Paper' do

      it 'correctly calculates computer plays Rock' do
        allow(computer).to receive(:choose_weapon).and_return (:Rock)
        $player_name = 'Marketeer'
        $player_weapon = :Paper
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Paper' do
        allow(computer).to receive(:choose_weapon).and_return (:Paper)
        $player_name = 'Marketeer'
        $player_weapon = :Paper
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Nobody'
      end

      it 'correctly calculates computer plays Scissors' do
        allow(computer).to receive(:choose_weapon).and_return (:Scissors)
        $player_name = 'Marketeer'
        $player_weapon = :Paper
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Lizard' do
        allow(computer).to receive(:choose_weapon).and_return (:Lizard)
        $player_name = 'Marketeer'
        $player_weapon = :Paper
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Spock' do
        allow(computer).to receive(:choose_weapon).and_return (:Spock)
        $player_name = 'Marketeer'
        $player_weapon = :Paper
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

    end

    context 'player plays Scissors' do

      it 'correctly calculates computer plays Rock' do
        allow(computer).to receive(:choose_weapon).and_return (:Rock)
        $player_name = 'Marketeer'
        $player_weapon = :Scissors
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Paper' do
        allow(computer).to receive(:choose_weapon).and_return (:Paper)
        $player_name = 'Marketeer'
        $player_weapon = :Scissors
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Scissors' do
        allow(computer).to receive(:choose_weapon).and_return (:Scissors)
        $player_name = 'Marketeer'
        $player_weapon = :Scissors
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Nobody'
      end

      it 'correctly calculates computer plays Lizard' do
        allow(computer).to receive(:choose_weapon).and_return (:Lizard)
        $player_name = 'Marketeer'
        $player_weapon = :Scissors
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Spock' do
        allow(computer).to receive(:choose_weapon).and_return (:Spock)
        $player_name = 'Marketeer'
        $player_weapon = :Scissors
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

    end

    context 'player plays Lizard' do

      it 'correctly calculates computer plays Rock' do
        allow(computer).to receive(:choose_weapon).and_return (:Rock)
        $player_name = 'Marketeer'
        $player_weapon = :Lizard
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Paper' do
        allow(computer).to receive(:choose_weapon).and_return (:Paper)
        $player_name = 'Marketeer'
        $player_weapon = :Lizard
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Scissors' do
        allow(computer).to receive(:choose_weapon).and_return (:Scissors)
        $player_name = 'Marketeer'
        $player_weapon = :Lizard
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Lizard' do
        allow(computer).to receive(:choose_weapon).and_return (:Lizard)
        $player_name = 'Marketeer'
        $player_weapon = :Lizard
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Nobody'
      end

      it 'correctly calculates computer plays Spock' do
        allow(computer).to receive(:choose_weapon).and_return (:Spock)
        $player_name = 'Marketeer'
        $player_weapon = :Lizard
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

    end

    context 'player plays Spock' do

      it 'correctly calculates computer plays Rock' do
        allow(computer).to receive(:choose_weapon).and_return (:Rock)
        $player_name = 'Marketeer'
        $player_weapon = :Spock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Paper' do
        allow(computer).to receive(:choose_weapon).and_return (:Paper)
        $player_name = 'Marketeer'
        $player_weapon = :Spock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Scissors' do
        allow(computer).to receive(:choose_weapon).and_return (:Scissors)
        $player_name = 'Marketeer'
        $player_weapon = :Spock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Marketeer'
      end

      it 'correctly calculates computer plays Lizard' do
        allow(computer).to receive(:choose_weapon).and_return (:Lizard)
        $player_name = 'Marketeer'
        $player_weapon = :Spock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'The computer'
      end

      it 'correctly calculates computer plays Spock' do
        allow(computer).to receive(:choose_weapon).and_return (:Spock)
        $player_name = 'Marketeer'
        $player_weapon = :Spock
        $computer_weapon = computer.choose_weapon
        expect(calculator.calculate_winner).to eq 'Nobody'
      end

    end

  end

end

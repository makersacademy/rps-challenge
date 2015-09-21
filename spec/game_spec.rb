require 'game'

describe Game do



  it '# expect game to respond to player_wins' do
    expect(subject).to respond_to(:player_wins)
  end

  it '# expect game to respond to computer_wins' do
    expect(subject).to respond_to(:computer_wins)
  end

  it '# expect game to respond to draw' do
    expect(subject).to respond_to(:draw)
  end

  context "when player chooses rock and computer chooses scissors" do
    let(:computer){double :computer, computer_weapon: "scissors"}
    let(:player){double :player, player_weapon: "rock"}

      it 'expect player to win' do
        expect(subject.player_wins(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses rock and computer chooses paper" do
    let(:computer){double :computer, computer_weapon: "paper"}
    let(:player){double :player, player_weapon: "rock"}

      it 'expect computer to win' do
        expect(subject.computer_wins(player, computer)).to eq("Computer wins")
      end
  end

  context "when player chooses rock and computer chooses rock" do
    let(:computer){double :computer, computer_weapon: "rock"}
    let(:player){double :player, player_weapon: "rock"}

      it 'expect game to be a draw' do
        expect(subject.draw(player, computer)).to eq("Draw")
      end
  end

  context "when player chooses paper and computer chooses rock" do
    let(:computer){double :computer, computer_weapon: "rock"}
    let(:player){double :player, player_weapon: "paper"}

      it 'expect player to win' do
        expect(subject.player_wins(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses paper and computer chooses scissors" do
    let(:computer){double :computer, computer_weapon: "scissors"}
    let(:player){double :player, player_weapon: "paper"}

      it 'expect player to lose' do
        expect(subject.computer_wins(player, computer)).to eq("Computer wins")
      end
  end

  context "when player chooses paper and computer chooses paper" do
    let(:computer){double :computer, computer_weapon: "paper"}
    let(:player){double :player, player_weapon: "paper"}

      it 'expect game to be a draw' do
        expect(subject.draw(player, computer)).to eq("Draw")
      end
  end

  context "when player chooses scissors and computer chooses paper" do
    let(:computer){double :computer, computer_weapon: "paper"}
    let(:player){double :player, player_weapon: "scissors"}

      it 'expect player to win' do
        expect(subject.player_wins(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses scissors and computer chooses rock" do
    let(:computer){double :computer, computer_weapon: "rock"}
    let(:player){double :player, player_weapon: "scissors"}

      it 'expect computer to win' do
        expect(subject.computer_wins(player, computer)).to eq("Computer wins")
      end
  end

    context "when player chooses scissors and computer chooses scissors" do
    let(:computer){double :computer, computer_weapon: "scissors"}
    let(:player){double :player, player_weapon: "scissors"}

      it 'expect game to be a draw' do
        expect(subject.draw(player, computer)).to eq("Draw")
      end
  end

end
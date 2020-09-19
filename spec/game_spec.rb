require 'game'
require 'player'
require 'bot'

describe Game do
  context 'single player game vs. bot' do
    player = Player.new("Test player")
    bot = Bot.new
    subject = Game.create(player, bot)

    describe '#rules' do
      it 'says draw if the choices are the same' do
        player.shake("rock")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "It's a draw!"
      end

      it 'declares the player the winner' do
        player.shake("paper")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "Test player is the winner!"
      end

      it 'declares the bot the winner' do
        player.shake("scissors")
        srand(0)
        bot.bot_shake
        expect(subject.rules(player, bot)).to eq "RPS BOT is the winner!"
      end
    end

    describe '#switch_players' do
      it 'switches @active_player' do
        expect { subject.switch_players(player, bot) }.to change { subject.active_player }.from(subject.player_one).to(subject.player_two)
      end
    end

    describe '#player_active?' do
      game2 = Game.create(player, bot)

      it 'returns true if active_player == player entered' do
        expect(game2.player_active?(player)).to eq true
      end

      it 'returns false if active_player != player entered' do
        game2.switch_players(player, bot)
        expect(game2.player_active?(player)).to eq false
      end
    end

    describe '#multi?' do
      multi_game = Game.create(player, bot)
      multi_game.mode = "multi"
      it 'returns true if the game is multiplayer' do
        expect(multi_game.multi?).to eq true
      end

      it 'returns false if the game is not multiplayer' do
        expect(subject.multi?).to eq false
      end
    end

  end
end

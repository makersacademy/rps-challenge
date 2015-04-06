class Multiplayer
  attr_reader :games, :lizspock

  def initialize
    @games = []
    @lizspock = []
  end

  def create sess, name, chose, type
    create_classic sess, name, chose if type == "classic"
    create_lizspock sess, name, chose if type == "lizspock"
  end

  def add sess, name, chose, type
    pending(type).first << [sess, name, chose, :not_played]
  end

  def pending type
    type == "classic" ? pending_classic : pending_lizspock
  end

  def games_available? type
    !(pending(type).empty?)
  end

  def find_game sess, type
    type == "classic" ? find_classic(sess) : find_lizspock(sess)
  end

  def find_self sess, type
    find_game(sess, type).select { |x| x[0] == sess }
  end

  def find_opponent sess, type
    find_game(sess, type).select { |x| x[0] != sess }
  end

  def ready? sess, type
    find_game(sess, type).length == 2
  end

  def begin_game sess, type
    find_self(sess, type)[0][3] = :played
  end

  def played player
    player[0][3] == :played
  end

  def remove game, sess, type
    type == "classic" ? rem_class(game, sess, type) : rem_liz(game, sess, type)
  end

  private

  def create_classic sess, name, chose
    @games << [[sess, name, chose, :not_played]]
  end

  def create_lizspock sess, name, chose
    @lizspock << [[sess, name, chose, :not_played]]
  end

  def find_classic sess
    @games.select { |x| x[0][0] == sess || x[1][0] == sess }.last
  end

  def find_lizspock sess
    @lizspock.select { |x| x[0][0] == sess || x[1][0] == sess }.last
  end

  def pending_classic
    @games.select { |x| x.length < 2 }
  end

  def pending_lizspock
    @lizspock.select { |x| x.length < 2 }
  end

  def rem_class game, sess, type
    @games.delete(game) if played find_opponent(sess, type)
  end

  def rem_liz game, sess, type
    @lizspock.delete(game) if played find_opponent(sess, type)
  end
end

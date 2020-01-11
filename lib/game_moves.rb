class GameLogic
  attr_reader :menu
  def intialize
    @menu = []
  end

  def load(filename = './RPSscores.json')
    data = JSON.parse(
      '{"RPS": [
        {
          "play1": "Rock",
          "play2": "Rock",
          "play1_score": 0,
          "play2_score": 0
        },
        {
          "play1": "Rock",
          "play2": "Paper",
          "play1_score": 0,
          "play2_score": 1
        },
        {
          "play1": "Rock",
          "play2": "Scissors",
          "play1_score": 1,
          "play2_score": 0
        },
        {
          "play1": "Paper",
          "play2": "Rock",
          "play1_score": 1,
          "play2_score": 0
        },
        {
          "play1": "Paper",
          "play2": "Paper",
          "play1_score": 0,
          "play2_score": 0
        },
        {
          "play1": "Paper",
          "play2": "Scissors",
          "play1_score": 0,
          "play2_score": 1
        },
        {
          "play1": "Scissors",
          "play2": "Rock",
          "play1_score": 0,
          "play2_score": 1
        },
        {
          "play1": "Scissors",
          "play2": "Paper",
          "play1_score": 1,
          "play2_score": 0
        },
        {
          "play1": "Scissors",
          "play2": "Scissors",
          "play1_score": 0,
          "play2_score": 0
        }
      ]
    }')
    @menu = data["RPS"]
  end

  def find_the_hash(play1, play2)
    @menu.each do |hash|
      play1 == hash[play1] && play2 == hash[play2] 
    end
  end
end

class RockPaperScissors
   
  PLAYER1_WINS = {
        "R" => {"R" => true, "P" => false, "S" => true },
        "P" => {"R" => true, "P" => true, "S" => false },
        "S" => {"R" => false, "P" => true, "S" => true }
  }
  
  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ;  end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if not /[RPS]/.match(player1[1]) or not /[RPS]/.match(player2[1])   
    PLAYER1_WINS[player1[1]][player2[1]] ? player1 : player2
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    # Check if we're at a game or tournament
    if tournament[0][0].is_a? String
      # it's a game
      return self.winner(tournament[0], tournament[1])
    else
      # it's another tournament
      return self.tournament_winner([tournament_winner(tournament[0]), tournament_winner(tournament[1])])
    end
  end

end




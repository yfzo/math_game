require './turn'

class TurnManager
    def initialize player1, player2
        @player1 = player1
        @player2 = player2
        @current_asker = @player2
    end

    def next_turn
        asker = @current_asker == @player1 ? @player2 : @player1
        @current_asker = asker
        
        responder = asker == @player1 ? @player2 : @player1

        Turn.new asker, responder
    end
end
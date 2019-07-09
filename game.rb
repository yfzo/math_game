require './player'
require './turn_manager'

class Game
    def initialize
        @player1 = Player.new 'Player 1'
        @player2 = Player.new 'Player 2'

        @turn_manager = TurnManager.new(@player1, @player2)
    end

    def run
        while (!game_over?)
            turn = @turn_manager.next_turn

            puts "----- NEW TURN -----"
            
            puts "#{turn.asker.name}: #{turn.question}"
            
            answer_given = gets.chomp.to_i

            if(answer_given != turn.question.answer)
                turn.responder.lose_life
                puts "#{turn.asker.name}: No way dude"
            else
                puts "Nice!!"
            end

            summary
        end
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
        puts "----- GAME OVER -----"
    end

    def game_over?
        @player1.dead? || @player2.dead?
    end

    def winner
        if (@player1.dead?)
            @player2
        else
            @player1
        end
    end

    def summary
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
end
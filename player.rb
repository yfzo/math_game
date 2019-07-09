class Player
    attr_reader :name, :lives

    MAX_LIVES = 3

    def initialize name
        @name = name
        @lives = MAX_LIVES
    end

    def dead?
        @lives < 1
    end

    def lose_life
        @lives = @lives - 1
    end
end
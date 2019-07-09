class Question
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end

    def to_s
        "What does #{@num1} plus #{@num2} equal?"
    end

    def answer
        @num1 + @num2
    end
end
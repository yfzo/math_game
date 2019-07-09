require('./question')

class Turn
    attr_reader :asker, :responder, :question

    def initialize asker, responder
        @asker = asker
        @responder = responder
        @question = self.question_generator
    end

    def question_generator
        num1 = rand(20) + 1
        num2 = rand(20) + 1

        Question.new num1, num2
    end
end
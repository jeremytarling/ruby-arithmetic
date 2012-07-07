#!/usr/bin/ruby
#
# jeremy.tarling@gmail.com

def makeQuestion
	@num1 = rand(10)
	@num2 = rand(10)	
	@operators = ["+", "-"]
	@operator = @operators[(rand(2))]
	@question = "#{@num1} #{@operator} #{@num2}"
	@answer = eval("#{@question}")
	@tries = 0
end

def askQuestion
	puts "what is #{@question}"
#	puts "(the value of @tries is currently #{@tries})"
	@userAnswer = gets
	if 
		@userAnswer.to_i == @answer
		puts "That's correct!"
		@correctAnswers +=1
	else
		while @tries < 1
			@tries +=1
			puts "Sorry that's wrong, please try again"
			askQuestion
		end
	end
end

def runQuiz
	@questionNumber = 1
	@correctAnswers = 0
	while @questionNumber < 11
		makeQuestion
		puts "Question #{@questionNumber}"
		askQuestion
		@questionNumber += 1
		if @tries == 1 : puts "the correct answer was #{@answer}" end
		puts
	end
	puts "Your score is #{@correctAnswers} out of 10"
end
	

runQuiz
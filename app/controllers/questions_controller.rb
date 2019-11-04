class QuestionsController < ApplicationController
  def ask
  end
# do not use puts, return, etc, as these go to the terminal and not the view

  def answer
    @message = params[:question]
    if @message == "I am going to work"
      @answer = "Great!"
    elsif @message.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly
# question, get dressed and go to work!.
# Otherwise she/he will answer I don't care, get dressed and go to work!

class CoachingController < ApplicationController
  def answer
    @message = params[:query]
      if @message == @message.upcase
        @answer = coach_answer_enhanced(@message)
      else
        @answer = coach_answer(@message)
      end
    return @answer
  end

  def ask
  end


  private
  def coach_answer(your_message)
  if your_message.downcase == "i am going to work right now!"
    ""
  elsif your_message.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if answer != ""
    if your_message == your_message.upcase
      "I can feel your motivation! #{answer}"
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      ""
    else
      answer
    end
  else
   ""
  end
end
end

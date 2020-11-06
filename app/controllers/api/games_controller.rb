class Api::GamesController < ApplicationController
  def tell_name
    @name = params[:name].upcase
    p @name
    if @name[0] == "A"
      @message = "You have a name that starts with the first letter of the alphabet"
    else
      @message = ""
    end
    render "name.json.jb"
  end

  def number
    @guess = params[:guess].to_i
    correct_answer = 8

    if @guess > correct_answer
      @message = "you guessed too high!"
    elsif @guess < correct_answer
      @message = "you guessed too low!"
    else
      @message = "you guessed correctly!"
    end
    render "the_number.json.jb"

  end

  def segment_number
    @number = params[:number].to_i
    correct_answer = 8

    if @number > correct_answer
      @message = "you guessed too high!"
    elsif @number < 8
      @message = "you guessed too low!"
    else
      @message = "you guessed correctly!"
    end
    render "segment_number.json.jb"
  end
end

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
    p params[:guess]

    if params[:guess].to_i > 8
      @message = "you guessed too high!"
    elsif params[:guess].to_i < 8
      @message = "you guessed too low!"
    else
      @message = "you guessed correctly!"
    end
    render "the_number.json.jb"

  end
end

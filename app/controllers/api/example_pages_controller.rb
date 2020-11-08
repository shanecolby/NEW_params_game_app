class Api::ExamplePagesController < ApplicationController
  def query
    @occupation = params["occupation"]
    render "query.json.jb"
  end

  def segment
    @vehicle = params[:vehicle]
    @sentence  = "You drive a #{@vehicle}"
    render "segment.json.jb"
  end

  def body
    @password = params[:password]
    @username =params[:username]
    if @username == "hugh" && @password == "swordfish"
      @message = "valid credentials"
    else 
      @message = "invalid credentials"
    end
    render "body.json.jb"
  end
end

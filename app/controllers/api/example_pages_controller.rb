class Api::ExamplePagesController < ApplicationController
  def query
    render "query.json.jb"
  end
end

class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
  end

  def random_greeting
    @greeting = Greeting.order('RANDOM()').first
    render json: @greeting, status: :ok
  end
end

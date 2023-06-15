class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first
    render json: @greeting, status: :ok
  end

  def random_greeting
    @greetings = Greeting.all
  end
end

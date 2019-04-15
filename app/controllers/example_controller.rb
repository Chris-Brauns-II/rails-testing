class ExampleController < ApplicationController
  def set_person_repository(person_repository)
    @person_repository = person_repository
  end

  def person_repository
    @person_repository ||= ActiveRecordPersonRepository.new
  end

  def set_weather_client(weather_client)
    @weather_client = weather_client
  end

  def hello_world
  end

  def hello
    @last_name = params[:last_name]
    @in_repo = person_repository.find_by_last_name(@last_name)
  end
end

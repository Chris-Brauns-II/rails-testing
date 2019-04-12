class ActiveRecordPersonRepository < PersonRepository
  def find_by_last_name(last_name)
    Person.where(last_name: last_name)
  end
end
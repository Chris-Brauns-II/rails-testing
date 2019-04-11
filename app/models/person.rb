class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    return "Person{id='#{id}',first_name='#{first_name}',last_name='#{last_name}'"
  end
end
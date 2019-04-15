require 'rails_helper'

RSpec.describe ActiveRecordPersonRepository do
  describe "yup" do
    context "where  we are" do
      let(:thing) { true }
 
      it "Gives a correct record" do
        last_name = "Pan"
        person = Person.create(:first_name => "Peter", :last_name => last_name)

        result = subject.find_by_last_name(last_name)
        expect(result).to eq person
      end

      it "Gives empty when correct" do
        result = subject.find_by_last_name("Pan")
        expect(result).to be nil
      end
    end
  end
end
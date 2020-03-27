require 'rails_helper'

RSpec.describe "professor show page" do
    describe "as a visitor" do
        it "can see a list of a professors and their details" do
            
            snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
            harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
            longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )
            student1 = ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
            student2 = ProfessorStudent.create(student_id: longbottom.id, professor_id: snape.id)

            # binding.pry
            visit "/professors/:id"

            expect(page).to have_content(snape.name) 
            expect(page).to have_content(student1.name) 
            expect(page).to have_content(student2.name) 

        end
    end
end

# As a visitor, 
# When I visit '/professors/:id'
# I see a list of the names of the students the professors have.
# (e.g. "Neville Longbottom"
#       "Hermione Granger"
#       "Luna Lovegood")
# ```
# ```
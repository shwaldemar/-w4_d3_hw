require_relative("../models/student")

Student.delete_all()

student1 = Student.new({"first_name" => "Hermione", "second_name" => "Grainger", "house" => "Griffindor", "age" => 18})
student1.save()

student2 = Student.new({"first_name" => "Ron", "second_name" => "Weasley", "house" => "Griffindor", "age" => 18})
student2.save()

student3 = Student.new({"first_name" => "Harry", "second_name" => "Potter", "house" => "Griffindor", "age" => 18})
student3.save()

student4 = Student.new({"first_name" => "Draco", "second_name" => "Malfoy", "house" => "Slytherin", "age" => 18})
student4.save()

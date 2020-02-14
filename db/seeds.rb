# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'json'
require 'activerecord-import'

instructor_parsed = JSON.parse(open('db/json_files/instructor.json').read)
course_parsed = JSON.parse(open('db/json_files/course.json').read)
subject_parsed = JSON.parse(open('db/json_files/subject.json').read)


instructors = []
instructors_columns = [:id, :first, :middle, :last, :email]

instructor_parsed.each do |row|
    instructors << {id: row['id'],
                    first: row['first'],
                    middle: row['middle'],
                    last: row['last'],
                    email: row['email']}
end
Instructor.import(instructors_columns, instructors, validate: false)

courses = []
courses_columns = [:id, :term, :code, :name, :continuity_id, :description, :credits, :independent_study]

course_parsed.each do |row|
    courses << {id: row['id'],
                    term: row['term'],
                    code: row['code'],
                    name: row['name'],
                    continuity_id: row['continuity_id'],
                    description: row['description'],
                    credits: row['credits'],
                    independent_study: row['independent_study']}
end
Course.import(courses_columns, courses, validate: false)

subjects = []
subjects_columns = [:id, :term, :name, :abbreviation]

subject_parsed.each do |row|
    subjects << {id: row['id'],
                    term: row['term'],
                    name: row['name'],
                    abbreviation: row['abbreviation']}
end
Subject.import(subjects_columns, subjects, validate: false)
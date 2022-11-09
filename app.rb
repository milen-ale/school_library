require './teacher'
require './student'
require './book'
require './rental'
require './classroom'
require './person'
require 'json'

class App
  attr_accessor :books, :students, :teachers, :rentals

  def initialize
    @books = []
    @peoples = []
    @rentals = []
  end

  def list_books
    @books.each_with_index do |bk, i|
      puts "#{i}) Title: #{bk.title}, Author: #{bk.author}"
    end
  end

  def list_rentals
    @rentals.each_with_index do |rental, _i|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
    end
  end

  def list_peoples
    @peoples.each_with_index do |p, i|
      puts "#{i}) [#{p.class}] Name: #{p.name}, ID: #{p.id}"
    end
  end

  def create_student
    puts 'Great!! lets create a student!'
    print 'Student Name: '
    name = gets.chomp
    print 'Student Age: '
    age = gets.chomp.to_i
    print 'Student Classroom: '
    cl = gets.chomp
    print 'Do you have parent permission? (true(T) or False(F): '
    permission = gets.chomp.strip.upcase
    case permission
    when 'T'
      @peoples.push(Student.new(age, name, true, cl))
      puts 'Student created successfully!'
    when 'F'
      @peoples.push(Student.new(age, name, false, cl))
      puts 'Student created successfully!'
    else
      puts 'Invalid'
    end
  end

  def create_student_params(age, name, permission, classroom)
    @peoples.push(Student.new(age, name, permission, classroom))
  end

  def create_teacher
    puts 'Great! Lets create a teacher.'
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher Age: '
    age = gets.chomp
    print 'Teacher\'s specialization: '
    specialization = gets.chomp
    @peoples.push(Teacher.new(age, specialization, name))
    puts 'Teacher crated successfully!'
  end

  def create_teacher_param(age, specialization, name)
    @peoples.push(Teacher.new(age, specialization, name))
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice = gets.chomp.to_i
    case choice
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'INVALID NUMBER!!'
    end
  end

  def create_book
    print 'Book Title: '
    title = gets.chomp
    print 'Book Author: '
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book created successfully!'
  end

  def create_book_param(title, author)
    @books << (Book.new(title, author))
  end

  def create_rental
    puts 'Select a book from the following list by number'
    list_books
    bk_choice = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    list_peoples
    p_choice = gets.chomp.to_i
    print 'Enter today\'s date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, @books[bk_choice], @peoples[p_choice]))
    puts 'Rental added successfully'
  end

  def create_rental_param(date, book, person)
    @rentals << Rental.new(date, book, person)
  end

  def list_rentals_id
    list_peoples
    print 'Id of person: '
    id = gets.chomp.to_i
    @rentals.each_with_index do |rental, _i| \
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == id
    end
  end

  def save_books
    new_arr = []
    @books.each do |bk|
      new_arr << { title: bk.title, author: bk.author }
    end
    File.write('files/books.json', JSON.generate(new_arr)) if new_arr.length.positive?
  end

  def save_rentals
    new_arr = []
    @rentals.each do |rental|
      new_arr << { date: rental.date, book: rental.book, author: rental.person }
    end
    File.write('files/rentals.json', JSON.generate(new_arr)) if new_arr.length.positive?
  end

  def save_person
    new_arr = []
    @peoples.each do |p|
      case p.class.name
      when 'Teacher'
        new_arr << { id: p.id, name: p.name, age: p.age, person_type: p.class.name, specialization: p.specialization }
      when 'Student'
        new_arr << { id: p.id, name: p.name, classroom: p.classroom, age: p.age,
                     parent_permission: p.parent_permission, person_type: p.class.name }
      end
    end
    File.write('files/persons.json', JSON.generate(new_arr)) if new_arr.length.positive?
  end
end

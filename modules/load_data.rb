def load_books(app)
  return unless File.exist?('files/books.json')

  JSON.parse(File.read('files/books.json')).each do |book|
    app.create_book_param(book['title'], book['author'])
  end
end

def load_persons(app)
  return unless File.exist?('files/persons.json')

  JSON.parse(File.read('files/persons.json')).each do |person|
    case person['person_type']
    when 'Teacher'
      app.create_teacher_param(person['age'], person['specialization'], person['name'])
    when 'Student'
      app.create_student_params(person['age'], person['name'], person['parent_permission'],
                                person['classroom'])
    end
  end
end

def load_rentals(app)
  return unless File.exist?('files/rentals.json')

  JSON.parse(File.read('files/rentals.json')).each do |rental|
    app.create_rental_param(rental['date'], rental['book'], rental['person'])
  end
end

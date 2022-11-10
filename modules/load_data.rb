def load_books(app)
  return unless File.exist?('files/books.json')

  JSON.parse(File.read('files/books.json')).each do |book|
    app.create_book_param(book['id'], book['title'], book['author'])
  end
end

def load_persons(app)
  return unless File.exist?('files/persons.json')

  JSON.parse(File.read('files/persons.json')).each do |person|
    case person['person_type']
    when 'Teacher'
      app.create_teacher_param(person['id'], person['age'], person['specialization'], person['name'])
    when 'Student'
      app.create_student_params(person['id'], person['age'], person['name'], person['parent_permission'],
                                person['classroom'])
    end
  end
end

def load_rentals(app)
  return unless File.exist?('files/rentals.json')

  JSON.parse(File.read('files/rentals.json')).each do |rental|
    app.create_rental_param(rental['date'], app.book(rental['book_id']), app.person(rental['person_id']))
  end
end

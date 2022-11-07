def choose_operation(opt)
  case opt
  when 1
    @app.list_books
  when 2
    @app.list_peoples
  when 3
    @app.create_person
  when 4
    @app.create_book
  when 5
    @app.create_rental
  when 6
    @app.list_rentals
  end
end

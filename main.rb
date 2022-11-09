require_relative './app'
require_relative './modules/choose_operation'
require_relative './modules/display'
require_relative './modules/load_data'

@app = App.new

def start_program
  load_books(@app)
  load_rentals(@app)
  load_persons(@app)
  loop do
    list_options
    choice = gets.chomp.to_i
    if choice.between?(1, 7)
      if choice == 7
        @app.save_books
        @app.save_person
        @app.save_rentals
        puts 'Thank you for using this app!'
        exit
      else
        choose_operation(choice)
      end
    end
  end
end

def main
  start_program
end

main

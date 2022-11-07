require_relative './app'
require_relative './modules/choose_operation'

@app = App.new

def list_options
  puts '
  Please choose one of the options: (1 - 7)
    1. - List all books
    2. - List all people
    3. - Create a person
    4. - Create a book
    5. - Create a rental
    6. - List all rentals for a given person id
    7. Exit
  '
end

def start_program
  loop do
    list_options
    choice = gets.chomp.to_i
    if choice.between?(1, 7)
      if choice == 7
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

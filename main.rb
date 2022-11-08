require_relative './app'
require_relative './modules/choose_operation'
require_relative './modules/display'

@app = App.new

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

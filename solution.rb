require 'sinatra'
require './todo'

get '/' do
  i=1
  while i <= 50
   cadena = i.to_s
   if ( i % 2 == 0)
   	 cadena = cadena + " Soy Par!"
   else
   	cadena = cadena + " Soy ImPar!"   	 
   end
   Todo.create(title: cadena)
   i = i + 1
 end
  @todos = Todo.all
  erb :index
end
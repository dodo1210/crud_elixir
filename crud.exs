aluno = [1, "Douglas", 22, 8.6]

defmodule CRUD do
   def print([]) do
   end
   def print([head | tail]) do 
      IO.puts(head)
      print(tail)
   end

   def insert(new) do 
      new
   end

   def update(aluno,i,id) do 
      IO.puts(Enum.at(aluno,i))
      if i<length(aluno) and Enum.at(aluno,i) != id do
         update(aluno,i+4,id)
      else
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno = aluno ++ CRUD.insert([3, "Naara", 23, 10])
          aluno
      end
   end

   def delete(aluno,i,id) do 
      if i<length(aluno) and Enum.at(aluno,i) != id do
         delete(aluno,i+4,id)
      else
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno = List.delete_at(aluno,i)
          aluno
      end
   end
end

aluno = aluno ++ CRUD.insert([2, "Davi", 23, 10])
aluno = CRUD.update(aluno,0,2)
CRUD.print(aluno)
aluno = CRUD.delete(aluno,0,1)
CRUD.print(aluno)

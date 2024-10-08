
def is_multiple_of_3_or_5?(n)
  n % 3 == 0 || n % 5 == 0
end


def sum_of_3_or_5_multiples(final_number)
  
  #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  final_sum = 0

  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

  if final_number.is_a?(String) || final_number.is_a?(Float) || final_number < 0
    return "Yo ! Je ne prends que les entiers naturels. TG."
  else
    final_number.times do |current_number|

      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
      if is_multiple_of_3_or_5?(current_number) == true
        final_sum += current_number
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
      end
        #Ici, positionne la fin de la boucle
    end
  end
  #on retourne la variable qui contient la somme du tout
  return final_sum
end


puts sum_of_3_or_5_multiples(11) #=> 33
puts sum_of_3_or_5_multiples(10) #=> 23

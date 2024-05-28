% a
likes(ellen,reading).
likes(john,computers).
likes(john,badminton).
likes(john,photo).
likes(john,reading).
likes(leonard,badminton).
likes(eric,swimming).
likes(eric,reading).
likes(eric,chess).
likes(paul,swimming).

% b
four_hobbies(Person) :- likes(Person, _), findall(Hobby, likes(Person, Hobby), Hobbies), length(Hobbies, 4).
same_hobbies(Person1, Person2) :-
    likes(Person1, Hobby), 
    likes(Person2, Hobby),
    Person1 \= Person2.
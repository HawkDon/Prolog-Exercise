% students
student(oliver).
student(anders).
student(tjalfe).
student(david).
student(mathias).
student(emilie).
student(nicolai).
student(mads).
student(anja).
student(elisabeth).
student(viktor).

% male
male(oliver).
male(anders).
male(tjalfe).
male(david).
male(mathias).
male(nicolai).
male(mads).
male(viktor).

% female
female(anja).
female(elisabeth).
female(emilie).

% couple
loves(oliver, anja).
loves(viktor, elisabeth).

% dates
date("2. July").
date("6. July").
date("8. July").
date("12. July").

% exam
exam("2. July", classA, room-101).
exam("6. July", classB, room-101).
exam("8. July", classA, room-107).
exam("12. July", classB, room-129).

% rooms
room-101.
room-107.
room-129.

% classes
classA(oliver).
classA(nicolai).
classA(anders).
classA(anja).
classA(mathias).
classB(david).
classB(viktor).
classB(elisabeth).
classB(tjalfe).
classB(mads).
classB(emilie).

% custom predicates
isStudentInLove(X) :- student(X), loves(X, Y).
isStudentAndIsMale(X) :- student(X), male(X).
isStudentAndIsFemale(X) :- student(X), female(X).
list_all_exams :- exam(X,Y,Z), write('Exam dates will be: '), write(X), write(' Class will be: '), write(Y), write(' Room will be: '), write(Z),nl.
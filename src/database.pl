% Characters in South Park
character("Stan Marsh", sex(male), age(10), country("🇺🇸"), grade(4)).
character("Kyle Broflovski", sex(male), age(10),country("🇺🇸"), grade(4)).
character("Eric Cartman", sex(male), age(10),country("🇺🇸"), grade(4)).
character("Kenny McCormick", sex(male), age(10),country("🇺🇸"), grade(4)).
character("Randy Marsh", sex(male), age(40),country("🇺🇸"), occupation("Geologist")).
character("Sheila Broflovski", sex(female), age(35),country("🇺🇸"), occupation("Housewife")).
character("Liane Cartman", sex(female), age(35),country("🇺🇸"), occupation("Receptionist")).
character("Mr. Garrison", sex(male), age(45),country("🇺🇸"), occupation("Teacher"), subject("Social Studies")).
character("Ms. Crabtree", sex(female), age(35),country("🇺🇸"), occupation("Teacher"), subject("English")).
character("Mr. Mackey", sex(male), age(50),country("🇺🇸"), occupation("Counselor")).

% Relationships between characters
friend("Stan Marsh", "Kyle Broflovski").
friend("Stan Marsh", "Kenny McCormick").
friend("Kyle Broflovski", "Stan Marsh").
friend("Eric Cartman", "Stan Marsh").
friend("Stan Marsh", "Eric Cartman").
friend("Kyle Broflovski", "Eric Cartman").
friend("Eric Cartman", "Kyle Broflovski").
friend("Kenny McCormick", "Eric Cartman").
friend("Eric Cartman", "Kenny McCormick").
friend("Kenny McCormick", "Kyle Broflovski").
friend("Kyle Broflovski", "Kenny McCormick").
parent("Randy Marsh", "Stan Marsh").
parent("Sheila Broflovski", "Kyle Broflovski").
parent("Liane Cartman", "Eric Cartman").
teacher("Mr. Garrison", "Stan Marsh").
teacher("Ms. Crabtree", "Kyle Broflovski").
teacher("Mr. Mackey", "Stan Marsh").
teacher("Mr. Mackey", "Kyle Broflovski").
teacher("Mr. Mackey", "Eric Cartman").
teacher("Mr. Mackey", "Kenny McCormick").
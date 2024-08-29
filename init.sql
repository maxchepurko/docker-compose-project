CREATE TABLE test_table (
    name VARCHAR(10) NOT NULL CHECK (LENGTH(name) BETWEEN 4 AND 10),
    surname VARCHAR(255),
    city VARCHAR(255),
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Anna', 'Ivanova', 'Moscow', 30),
('John', 'Doe', 'New York', 40),
('Jane', 'Smith', 'London', 25),
('Lena', 'Petrova', 'Moscow', 28),
('Ivan', 'Ivanov', 'Moscow', 70),
('Olga', 'Sidorova', 'Saint Petersburg', 45),
('Max', 'Kozlov', 'Berlin', 35),
('Pavel', 'Smirnov', 'Paris', 55),
('Nina', 'Sokolova', 'Vienna', 65),
('Mark', 'Kuznetsov', 'Amsterdam', 23),
('Oleg', 'Fedorov', 'Tokyo', 31),
('Maria', 'Zaitseva', 'Oslo', 27),
('Igor', 'Volkov', 'Stockholm', 33),
('Sergey', 'Mikhailov', 'Madrid', 47),
('Diana', 'Lebedeva', 'Rome', 29),
('Svetlana', 'Kovaleva', 'Prague', 41),
('Roman', 'Belov', 'Warsaw', 38),
('Tatiana', 'Morozova', 'Budapest', 52),
('Alexey', 'Nikolaev', 'Helsinki', 44),
('Elena', 'Popova', 'Brussels', 32);
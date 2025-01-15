-- Active: 1736833466163@@127.0.0.1@3306@test

-- authors Table
CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- categories Table
CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);



-- blogs Table
CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);







INSERT INTO authors (author_name) VALUES ("John Doe");



SELECT * FROM authors;


SELECT * FROM authors WHERE id = 3;



UPDATE authors SET author_name = "Jasim Doe" WHERE id = 2;



DELETE FROM authors WHERE id = 1;


INSERT INTO categories (category_name) VALUES ("My Category");


SELECT * FROM categories;



SELECT * FROM categories WHERE id = 5


UPDATE categories SET category_name = "Our Category" WHERE id = 1;

DELETE FROM categories WHERE id = 1;

INSERT INTO blogs (title, body, category_id, author_id) 
VALUES ("My Blog", "My blog's content", 2, 2)



SELECT * FROM blogs;


SELECT * FROM blogs WHERE id = 1;



SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;


UPDATE blogs SET title = "My Updated Blog Title" WHERE id = 1;


UPDATE blogs SET category_id = 4, author_id = 2 WHERE id = 10


DELETE FROM blogs;




SELECT authors.author_name, blogs.title, blogs.body
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE authors.id = 3;



SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "Lifestyle";











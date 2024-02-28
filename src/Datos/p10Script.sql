CREATE TABLE Articulo (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    imagen VARCHAR(255),
    precio DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(255)
);

CREATE TABLE Cliente (
    clienteID VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    articulo_id INT,
    compraTotal FLOAT DEFAULT 0,
    FOREIGN KEY (articulo_id) REFERENCES Articulo(id)
);

INSERT INTO Articulo (id, nombre, imagen, precio, fecha, descripcion) VALUES
(1, 'Mesa de crafteo', 'mesa_crafteo.jpg', 9.99, '2024-02-26', 'Una mesa esencial para tus aventuras en el mundo de la construcción, donde podrás crear y diseñar tus objetos con facilidad y precisión.'),
(2, 'Stack x64 tablones de abedul', 'madera_abedul.jpg', 29.99, '2024-02-25', 'Este generoso stack de tablones de abedul te proporcionará la materia prima necesaria para construir estructuras elegantes y duraderas.'),
(3, 'Puerta de roble', 'puerta_roble.jpg', 39.99, '2024-02-24', 'Una puerta robusta y elegante que añadirá un toque de clase a tus edificaciones, mientras mantiene a raya a los intrusos no deseados.'),
(4, 'Hacha de madera', 'hacha_madera.jpg', 19.99, '2024-02-24', 'La herramienta básica de todo constructor, esta hacha de madera te ayudará a recolectar recursos de manera eficiente y rápida.'),
(5, 'Pack x5 brotes de roble', 'brote_roble.jpg', 5.99, '2024-02-24', 'Empieza tu propio bosque con este práctico pack de brotes de roble, perfecto para empezar tu plantación y garantizar un suministro constante de madera.');

INSERT INTO Cliente (clienteID, password, articulo_id) VALUES
('cliente1', 'password1.', 1),
('cliente2', 'password2.', 2),
('cliente3', 'password3.', 3);

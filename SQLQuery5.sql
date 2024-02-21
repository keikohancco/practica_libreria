
CREATE TABLE Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Genero VARCHAR(50) NOT NULL
);


CREATE TABLE Libros (
    LibroID INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(200) NOT NULL,
    Tipo INT NOT NULL, 
    Costo DECIMAL(10, 2) NOT NULL 
);

CREATE TABLE Ventas (
    VentaID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT,
    LibroID INT,
    FechaVenta DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
);

INSERT INTO Libros (Titulo, Tipo, Costo) VALUES
('Libro de Ficción', 1, 90.00),
('Libro de Novelas', 2, 100.00),
('Libro de Cuentos', 3, 80.00),
('Libro de Física Cuántica', 4, 150.00);




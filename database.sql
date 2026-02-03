-- Utwórz bazę danych
CREATE DATABASE IF NOT EXISTS cars_db;
USE cars_db;

-- Utwórz tabelę samochodów
CREATE TABLE IF NOT EXISTS cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dodaj przykładowe dane
INSERT INTO cars (brand, model, year, price, description, image_url) VALUES
('BMW', 'M3', 2023, 350000, 'Sportowy sedan z silnikiem V6. Doskonałe osiągi i luksusowe wykończenie.', 'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=500'),
('Mercedes-Benz', 'C-Class', 2023, 280000, 'Elegancki sedan klasy premium. Komfort i nowoczesne technologie.', 'https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?w=500'),
('Audi', 'A4', 2022, 250000, 'Wszechstronny sedan z napędem quattro. Idealna równowaga między sportem a komfortem.', 'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=500'),
('Tesla', 'Model 3', 2023, 220000, 'Elektryczny sedan przyszłości. Zerowa emisja i niesamowite przyspieszenie.', 'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=500'),
('Volkswagen', 'Golf GTI', 2023, 180000, 'Sportowy hot hatch. Kompaktowy, dynamiczny i zabawny w prowadzeniu.', 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=500'),
('Ford', 'Mustang', 2023, 320000, 'Amerykańska legenda muscle car. Potężny silnik V8 i kultowy design.', 'https://images.unsplash.com/photo-1494905998402-395d579af36f?w=500');

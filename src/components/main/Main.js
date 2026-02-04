import { useState, useEffect } from 'react';
import './Main.css';

function Main() {
  const [cars, setCars] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetch('http://localhost/react1/api/cars.php')
      .then(response => {
        if (!response.ok) {
          throw new Error('Błąd pobierania danych');
        }
        return response.json();
      })
      .then(data => {
        setCars(data);
        setLoading(false);
      })
      .catch(err => {
        setError(err.message);
        setLoading(false);
      });
  }, []);

  if (loading) return <div className="Main"><p>Ładowanie...</p></div>;
  if (error) return <div className="Main"><p>Błąd: {error}</p></div>;

  return (
    <main className="Main">
      <h1>Nasza Oferta Samochodów</h1>
      <div className="cars-container">
        {cars.map(car => (
          <div key={car.id} className="car-card">
            <img src={car.image_url} alt={`${car.brand} ${car.model}`} />
            <div className="car-info">
              <h2>{car.brand} {car.model}</h2>
              <p className="car-year">Rok: {car.year}</p>
              <p className="car-description">{car.description}</p>
              <p className="car-price">{parseFloat(car.price)} PLN</p>
            </div>
          </div>
        ))}
      </div>
    </main>
  );
}

export default Main;
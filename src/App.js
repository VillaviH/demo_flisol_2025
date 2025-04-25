import { Button } from 'primereact/button';
import React, { useState } from 'react';
import { Calendar } from 'primereact/calendar';
        
import './App.css';

function App() {
  const [date, setDate] = useState(null);
  return (
    <div align="center">
      <h1>DEMO FLISOL ABRIL 2025</h1>
      <h2>De Clics a Código: Infraestructura con OpenTofu:</h2>
      <br/>
      <h3>Ejemplo de Boton</h3>  
      <Button label="Enviar"/>
      <h3>Select a Date</h3>
      <Calendar value={date} onChange={(e) => setDate(e.value)} />
      <p>Selected Date: {date ? date.toString() : 'None'}</p> 
    </div>  
  );
}

export default App;

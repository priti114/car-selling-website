document.addEventListener('DOMContentLoaded', function() {
    loadCars();
});

function addCar() {
    const make = document.getElementById('make').value;
    const model = document.getElementById('model').value;
    const year = document.getElementById('year').value;

    fetch('/api/cars', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ make, model, year }),
    })
    .then(response => response.json())
    .then(data => {
        loadCars();
        document.getElementById('make').value = '';
        document.getElementById('model').value = '';
        document.getElementById('year').value = '';
    });
}

function loadCars() {
    fetch('/api/cars')
    .then(response => response.json())
    .then(data => {
        const carsList = document.getElementById('cars');
        carsList.innerHTML = '';
        data.forEach(car => {
            const listItem = document.createElement('li');
            listItem.textContent = `${car.make} ${car.model} (${car.year})`;
            carsList.appendChild(listItem);
        });
    });
}


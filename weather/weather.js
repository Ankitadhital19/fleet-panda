function fetchWeather(){
    var cityName = document.getElementById('search-bar').value;
    if(cityName ===''){
        alert('Please enter city name');
        return;
    }

    var apiKey ="b0bc128574658eac6b8574f28788f2dd";
    var url = 'https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}'


    fetch(url)
        .then(response => response.json())
        .then(data => {
            console.log(data);
            var temp = data.main.temp + '°C';
            var humidity = 'Humidity: ' + data.main.humidity + '%';
            var wind = 'Wind Speed: ' + data.wind.speed + ' m/s';
            var city = data.name + ', ' + data.sys.country;

            document.getElementById('temp').innerHTML = temp;
            document.getElementById('humidity').innerHTML = humidity;
            document.getElementById('wind').innerHTML = wind;

            document.getElementById('weather-box').style.display = 'block';
        })
        .catch(error => {
            console.log(error);
        });
}
// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'consts.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var _weatherData;
//   bool _loading = true;
//   final TextEditingController _cityController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     fetchWeather('Sihanoukville');
//   }

//   Future<void> fetchWeather(String city) async {
//     setState(() {
//       _loading = true;
//     });
//     final response = await http.get(Uri.parse('$apiUrl?q=$city&appid=$apiKey'));
//     if (response.statusCode == 200) {
//       setState(() {
//         _weatherData = json.decode(response.body);
//         _loading = false;
//       });
//     } else {
//       throw Exception('Failed to load weather data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(

//         title: const Text(
//           'Weather App',
//           style: TextStyle(
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _cityController,
//                     decoration: const InputDecoration(
//                       labelText: 'Enter city name',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.search),
//                   onPressed: () {
//                     fetchWeather(_cityController.text);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: _loading
//                 ? const Center(child: CircularProgressIndicator())
//                 : WeatherDisplay(weatherData: _weatherData),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WeatherDisplay extends StatelessWidget {
//   final Map weatherData;

//   const WeatherDisplay({super.key, required this.weatherData});

//   @override
//   Widget build(BuildContext context) {
//     String iconCode = weatherData['weather'][0]['icon'];
//     String iconUrl = 'http://openweathermap.org/img/wn/$iconCode@2x.png';

//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'City: ${weatherData['name']}',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             Image.network(iconUrl),
//             const SizedBox(height: 16),
//             Text(
//               'Temperature: ${(weatherData['main']['temp'] - 273.15).toStringAsFixed(2)}°C',
//               style: const TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Feels Like: ${(weatherData['main']['feels_like'] - 273.15).toStringAsFixed(2)}°C',
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Weather: ${weatherData['weather'][0]['description']}',
//               style: const TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Humidity: ${weatherData['main']['humidity']}%',
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Pressure: ${weatherData['main']['pressure']} hPa',
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Wind Speed: ${weatherData['wind']['speed']} m/s',
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Wind Direction: ${weatherData['wind']['deg']}°',
//               style: const TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'consts.dart'; // Make sure you have this file with your API key and URL

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Map<String, dynamic>> _weatherData = [];
//   bool _loading = true;
//   final TextEditingController _cityController = TextEditingController();
// List<String> defaultCities = [
//   'Phnom Penh',
//   'Los Angeles',
//   'Sihanoukville',
//   'San Francisco',
//   'Chicago',
//   'Tokyo',
//   'Las Vegas',
//   'Paris',
//   'London',
//   'Seoul',
//   'Bangkok',
//   'Kampot',
//   'New York',
//   'Sydney',
//   'Hanoi',
//   'Beijing',
//   'Shanghai',
//   'Jakarta',
//   'Rome',
//   'Hong Kong',
//   'Kuala Lumpur',
//   'Barcelona',
//   'Berlin',
//   'Dubai',
//   'Toronto',
//   'Moscow',
//   'Mexico City',
// ];

//   @override
//   void initState() {
//     super.initState();
//     fetchWeather(defaultCities);
//   }

//   Future<void> fetchWeather(List<String> cities) async {
//     setState(() {
//       _loading = true;
//     });

//     final List<Map<String, dynamic>> weatherList = [];

//     for (var city in cities) {
//       final response = await http
//           .get(Uri.parse('$apiUrl?q=$city&appid=$apiKey&units=metric'));
//       if (response.statusCode == 200) {
//         weatherList.add(json.decode(response.body));
//       } else {
//         throw Exception('Failed to load weather data for $city');
//       }
//     }

//     setState(() {
//       _weatherData = weatherList;
//       _loading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:  const Color.fromARGB(255, 70, 126, 222),

//         title: const Text(
//           'Weather App',
//           style: TextStyle(
//             fontSize: 28,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _cityController,
//                     decoration: const InputDecoration(
//                       labelText: 'Enter city name',
//                     ),
//                     onSubmitted: (value) {
//                       fetchWeather([value]);
//                     },
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.search),
//                   onPressed: () {
//                     fetchWeather([_cityController.text]);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: _loading
//                 ? const Center(child: CircularProgressIndicator())
//                 : WeatherDisplay(weatherData: _weatherData),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WeatherDisplay extends StatelessWidget {
//   final List<Map<String, dynamic>> weatherData;

//   const WeatherDisplay({super.key, required this.weatherData});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: weatherData.length,
//       itemBuilder: (context, index) {
//         final data = weatherData[index];
//         String iconCode = data['weather'][0]['icon'];
//         String iconUrl = 'http://openweathermap.org/img/wn/$iconCode@2x.png';

//         return Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color:const Color.fromARGB(255, 70, 126, 222),
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                  BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 10,
//                   offset: Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     'City: ${data['name']}',
//                     style: const TextStyle(
//                         fontSize: 30, fontWeight: FontWeight.w600 , color: Colors.white, fontFamily: 'Arial'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Image.network(iconUrl),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Temperature: ${data['main']['temp'].toStringAsFixed(2)}°C',
//                   style: const TextStyle(fontSize: 24, fontFamily: 'Arial', color :Colors.white),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Feels Like: ${data['main']['feels_like'].toStringAsFixed(2)}°C',
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Weather: ${data['weather'][0]['description']}',
//                   style: const TextStyle(fontSize: 24),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Humidity: ${data['main']['humidity']}%',
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Pressure: ${data['main']['pressure']} hPa',
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Wind Speed: ${data['wind']['speed']} m/s',
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Wind Direction: ${data['wind']['deg']}°',
//                   style: const TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }













import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'consts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _weatherData = [];
  bool _loading = true;
  final TextEditingController _cityController = TextEditingController();
  List<String> defaultCities = [
    'Phnom Penh',
    'Los Angeles',
    'Sihanoukville',
    'San Francisco',
    'Chicago',
    'Tokyo',
    'Las Vegas',
    'Paris',
    'London',
    'Seoul',
    'Bangkok',
    'Kampot',
    'New York',
    'Sydney',
    'Hanoi',
    'Osaka',
  ];

  @override
  void initState() {
    super.initState();
    fetchWeather(defaultCities);
  }

  Future<void> fetchWeather(List<String> cities) async {
    setState(() {
      _loading = true;
    });

    final List<Map<String, dynamic>> weatherList = [];
    for (var city in cities) {
      final response = await http
          .get(Uri.parse('$apiUrl?q=$city&appid=$apiKey&units=metric'));
      if (response.statusCode == 200) {
        weatherList.add(json.decode(response.body));
      } else {
        throw Exception('Failed to load weather data for $city');
      }
    }

    setState(() {
      _weatherData = weatherList;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 10)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _cityController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Enter city name',
                          labelStyle: GoogleFonts.lato(fontSize: 18),
                        ),
                        onSubmitted: (value) {
                          fetchWeather([value]);
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, color: Color(0xFF1E88E5)),
                      onPressed: () {
                        fetchWeather([_cityController.text]);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : WeatherDisplay(weatherData: _weatherData),
          ),
        ],
      ),
    );
  }
}

class WeatherDisplay extends StatelessWidget {
  final List<Map<String, dynamic>> weatherData;

  const WeatherDisplay({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherData.length,
      itemBuilder: (context, index) {
        final data = weatherData[index];
        String iconCode = data['weather'][0]['icon'];
        String iconUrl = 'http://openweathermap.org/img/wn/$iconCode@2x.png';
        String iconlottie = getWeatherAnimation(data['weather'][0]['description']);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        '${data['name']}',
                        style: GoogleFonts.lato(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Center(child: Image.network(iconUrl)),
                    SizedBox(child: Center(child: Lottie.asset(iconlottie)), height: 200,),
                    const SizedBox(height: 16),
                    Text(
                      'Temperature: ${data['main']['temp'].toStringAsFixed(2)}°C',
                      style:
                          GoogleFonts.lato(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Feels Like: ${data['main']['feels_like'].toStringAsFixed(2)}°C',
                      style:
                          GoogleFonts.lato(fontSize: 18, color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Weather: ${data['weather'][0]['description']}',
                      style:
                          GoogleFonts.lato(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Humidity: ${data['main']['humidity']}%',
                      style:
                          GoogleFonts.lato(fontSize: 18, color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Pressure: ${data['main']['pressure']} hPa',
                      style:
                          GoogleFonts.lato(fontSize: 18, color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Wind Speed: ${data['wind']['speed']} m/s',
                      style:
                          GoogleFonts.lato(fontSize: 18, color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Wind Direction: ${data['wind']['deg']}°',
                      style:
                          GoogleFonts.lato(fontSize: 18, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  String getWeatherAnimation(String mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json';
    switch (mainCondition.toLowerCase()) {
      
      //* Rain
      case 'rain':
      case 'drizzle':
      case 'light rain':
      case 'shower rain':
      case 'moderate rain':
      case 'heavy intensity rain':
      case 'very heavy rain':
        return 'assets/rain.json';


      //* Clear sky or sunny
      case 'clear sky':
      case 'sunny':
        return 'assets/sunny.json';


      //* Thunder
      case 'thunder':
      case "thunderstorm":
      case "light thunderstorm":
      case "heavy thunderstorm":
      case "ragged thunderstorm":
        return 'assets/thunder.json';


      //* Snowy
      case 'snowy':
      case 'light snow':
      case 'heavy snow':
        return 'assets/snowy.json'; 

      
      //* Cloud
      case 'clouds':
      case 'smoke':
      case 'haze':
      case 'mist':
      case 'dust':
      case 'fog':
      case 'overcast clouds':
      case 'broken clouds':
      case 'scattered clouds':
        return 'assets/cloudy.json';
      default:
        return 'assets/cloudy.json';
    }
  }

}


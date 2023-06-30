import 'package:flutter/material.dart';
import 'package:testis/MainPage/MovieDetailScreen.dart';
import 'package:testis/MainPage/Movie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testis/MainPage/MainMoviePosterCarousel.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  final List<Movie> movies = [
    Movie(
      'Movie 1',
      'Action',
      '2019',
      'Actor A, Actor B, Actor C',
      'Movie 1 synopsis',
    ),
    Movie(
      'Movie 2',
      'Adventure',
      '2020',
      'Actor D, Actor E',
      'Movie 2 synopsis',
    ),
    Movie(
      'Movie 3',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 4',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 5',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 6',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 7',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 8',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 9',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    Movie(
      'Movie 10',
      'Comedy',
      '2021',
      'Actor F, Actor G',
      'Movie 3 synopsis',
    ),
    // Add more movies as needed
  ];
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.center, // Adjust the alignment as needed
          child: Image.asset(
            'assets/images/your_logo.png',
            width: 5, // Adjust the width as needed
            height: 5, // Adjust the height as needed
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {
              // Perform favorite action
            },
          ),
        ],
      ),

      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainMoviePosterCarousel(
              movies: [],
              onPosterTapped: (index) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailScreen(movie: movies[index]),
                  ),
                );
              },
            ),
            SizedBox(height: 16.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 2 / 3, // Adjust the aspect ratio as needed
              ),
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MovieDetailScreen(movie: movies[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                           'assets/Poster5.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          movies[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          movies[index].genre,
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}

/*appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('New Movie'),
        titleTextStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          color: Colors.amber,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.amber,
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement the action when the search button is pressed
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                _buildMoviePoster(
                  'assets/Poster2.jpg',
                  'Fast X',
                  '10.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster3.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\tBlack Clover: \nSword of The Wizard King',
                  '15.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster5.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\tSpiderMan: \nAcross The Spider Verse',
                  '25.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster1.jpg',
                  'Extraction 2',
                  '20.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster16.jpg',
                  'Demon Slayer',
                  '18.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster8.jpg',
                  'Evil Dead Rise',
                  '25.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster17.jpg',
                  'The Flash',
                  '22.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster18.jpg',
                  'Black Mirror',
                  '20.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster4.jpg',
                  'John Wick: Chapter 4',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster19.jpg',
                  'Peaky Blinders',
                  '25.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster20.jpg',
                  'Alchemy Of Souls',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster21.jpg',
                  'Blood Hounds',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster22.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\t\tDoctor Strange\nIn The Multiverse of Madnes',
                  '20.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster23.jpg',
                  '\t\t\t\t\t\t\t\t\t\t\t\tTailed of \nThe Nine Tailed 1938',
                  '25.00',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster24.jpg',
                  'Lucifer',
                  '15.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster25.jpg',
                  'Interstellar',
                  '30.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster26.jpg',
                  'Money Heist',
                  '15.00\n',
                  context,
                ),
                _buildMoviePoster(
                  'assets/Poster27.jpg',
                  'Ejen Ali: The Movie',

                  '15.00\n',
                  context,
                ),
                // Add more movie posters
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoviePoster(
      String assetPath,
      String movieTitle,
      String price,
      BuildContext context,
      ) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            assetPath,
            width: 200,
            height: 200,
          ),
          SizedBox(height: 8),
          Text(
            movieTitle,
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            'RM\t$price',
            style: TextStyle(fontSize: 14,color: Colors.white),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentMethod(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the desired background color
            ),
            child: Text('Purchase'),
          ),
        ],
      ),
    );
  }
}*/

**App Name:** Swivt Challenege

**Description:**
  > ###### This is a movie app that gives the informations about trending movies, popular movies, genre and movies by genre.
  > ###### The app contains five main workable screens.
  > ###### Dashboard Screen: Contains bottom navigation bar with four screens (two workable).
  > ###### Home Screen: Contains header(static data), List of Genre, list of trending movies in carousel slider, list of popular movies in horizontal slider which are fetched from the api.
  > ###### Clicking on the one of the genre tile will navigate to page that fetch the movie list by genre Id.
  > ###### Clicking on the trending movie or popular movie will navigate to movie details page.
  > ###### Clicking on the see more text will navigate to the page that shows all the popular movies available.
  >  ###### Search Icon on Bottom nav will navigate to the page where movie can be searched from the title.
  > ###### Others pages are static pages.
  > ###### Local database is added to all popular movies only in all_movies.dart page.
  > ###### Pagination is added to all popular movies only in all_movies.dart page.
  > ###### Unit test is done for getting the genre list from API.
  > ###### Widget Testing and Integration testing are incomplete.


**API Used:** 
 https://www.themoviedb.org/documentation/api

| Default Branch       |  main          |
| ------------------   | -------------- |
| Working Branch       |  dev           |

**Tools:**

| Tools              | Version                                                             |
| ------------------ | ------------------------------------------------------------------- |
| Flutter SDK        | Stable 2.10.4                                                       |
| Dart SDK           | Stable 2.16.2                                                       |
| IDE                | Visual Studio Code / Android Studio, XCode                          |
| System OS          | Windows / Linux / MacOS                                             |
| Device             | Android emulator / iOS simulator or physical device ( recommended ) |

###### Watch the video here (Click on the image):

[![](http://img.youtube.com/vi/ImAXkux8yBM/0.jpg)](http://www.youtube.com/watch?v=ImAXkux8yBM "")


###### Apk Link:
[Click here for android apk.](https://drive.google.com/file/d/1b31D2FBXRG6PGYOSIVws5HVLDIPB0DQk/view?usp=sharing)

**ScreenShots**

| Dashboard Screen  | Movie By Genre Screen |
| ------------- | ------------- |
| <img src="https://user-images.githubusercontent.com/34705432/164296293-4f2a3c59-6a02-40a0-b485-a396711881bb.PNG" height="400" width="200">  | <img src="https://user-images.githubusercontent.com/34705432/164296635-d1b36676-5c9e-4e29-ba4f-48afed8e8988.PNG" height="400" width="200"> |


| Movie Details Screen  | All Popular Movies Screen |
| ------------- | ------------- |
| <img src="https://user-images.githubusercontent.com/34705432/164296649-ea189945-8133-4ee7-b7f9-3373acc20643.PNG" height="400" width="200">  |<img src="https://user-images.githubusercontent.com/34705432/164296659-754d4f51-3045-4fff-a3f7-3914afc8136a.PNG" height="400" width="200"> |

| Search Movie Screen |
| ------------- |
| <img src="https://user-images.githubusercontent.com/34705432/164296672-8f4d2ef4-d27e-42f5-a889-8b5d937ef138.PNG" height="400" width="200"> |


**Plugin Used:**
###### Network & Connectivity :
  - [dio: ^4.0.6]
  
###### State Management and Dependency Injection :
  - [flutter_bloc: ^8.0.1]
  - [equatable: ^2.0.3]
  - [get_it: ^7.2.0]
  
###### Code and Data Class Generation with Functional Programming :
  - [dartz: ^0.10.1]
  - [hive_generator: ^1.1.2]
  - [build_runner: ^2.1.10]
  - [freezed: ^1.0.0]
  - [json_serializable: ^6.1.6]
  - [freezed_annotation: ^1.0.0]

###### Local storage :
  - [hive: ^2.1.0]
  - [path_provider: ^2.0.9]


###### Linting :
  - [very_good_analysis: ^2.1.2]

###### UI Components :
  - [carousel_slider: ^4.0.0]
  - [pull_to_refresh: ^2.0.0]
  - [cached_network_image: ^3.2.0]
  - [shimmer: ^2.0.0]

###### Fake APi: 
   - [mockito: ^5.1.0]


##### Running a project:
  - Open the project folder in your choosen IDE.
  - Open your terminal and run the commands : `flutter clean ` and `flutter pub get` to download and install all the dependencies.
  - Navigate to `iOS folder` in your terminal and run `pod install` ( If you are building for iOS platform only ).
  - Run flutter `flutter pub run build_runner build --delete-conflicting-outputs` on the terminal to make sure all the data class are generated
  - Start your device i.e `Android Emulator` or `iOS Simulator` or `Physical Device`.
  - Open terminal and run `flutter test` command to run the test case.
  - Open terminal and run `flutter run` command to build your project.


















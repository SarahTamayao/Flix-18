# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF

- The User is now able to click each individual cell to reach the movies detail view. They are also able to scroll through a grid of movies and access movie details that way as well
<img src='https://github.com/bryandevelops/Flix/blob/master/demo3.gif' title='Video Walkthrough' width='400' alt='Video Walkthrough' />

### Notes
The most challenging aspect of part two of Flix' creation had to be again fiddling with the settings to get the layout just right. Messing around with Auto-Layout last week made determining the constraints for the Detail View's really straight-forward. This time around, I was wrapping my head around how to properly construct a layout for a Collection View (determining the number of items per row, line and item spacing, etc). 

The backend things are slowly starting to click, although I ran into more hurdles regarding syntax. In one particular instance, I wanted to create a conditional that would change a movies backdrop path to a default one if the "backdrop_path" key ever had a value of null. This led to me having to figure out how I can check for Null in Swift. Ultimately I managed to get it to work and I was able to have movies either load their respective backdrop images, or a general default one. Here's a snippet of the code below:
```
let backdropPath = movie["backdrop_path"] as? String ?? "https://img.freepik.com/free-photo/assortment-cinema-elements-red-background-with-copy-space_23-2148457848.jpg?size=626&ext=jpg"
var backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
if (movie["backdrop_path"] as? String == nil) {
   backdropURL = URL(string: backdropPath)
}
```

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)

- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS

- [x] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.

### App Walkthrough GIF

- Functioning app with App Icon and Launch Screen present. The User is able to scroll through a list of movies each containing their title, synopsis and movie poster

<img src='https://github.com/bryandevelops/Flix/blob/master/demo.gif' title='Video Walkthrough' width='400' alt='Video Walkthrough' />

- The app is compatible with multiple device sizes and orientations including: iPhone 11 Pro Max (6.5in), iPhone 11 Pro (5.8in), iPhone 11 (6.1in), and even the iPhone SE (4.0in).

<img src='https://github.com/bryandevelops/Flix/blob/master/demo2.gif' title='Video Walkthrough' width='800' alt='Video Walkthrough' />

### Notes
The biggest challenge encountered while building this part of the app was learning and understanding some of Swift's syntax in order to get the code to do what I wanted it to do. The concepts aren't new, but with every language comes new conventions and syntax. I'm talking about things such as String Interpolation or Type Casting (which some languages do implicitly). Also, playing around with the Auto-Layout constraints proved to be a little tedious as well. There was a lot of experimentation seeing how the different constraints and settings changeed the appearance of my Table View after every build. The experimentation led me to get a better grasp into how items interact though, so overall it was worth tinkering extensively with.

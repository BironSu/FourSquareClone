# FourSquareClone

# Overview

Using the FourSquare API to load list of categories of venues in a collection view

- The user is able to click on the search button which segues to a search bar that allows the user to search for a venue
- The user is able to select a venue from different categories 
- Selecting a venue category segues to a table view of venues
- Selecting a table view cell segues to a detail view where the user can see more information about the venue such as the venue's image, name, address, direction and favorite button which allows the user to favorite a venue
- Selecting on the venue's direction segues to the venue's map view annotations.
- Clicking on the map view annotation gives you a google MKLocation direction

![file from ios 4](https://user-images.githubusercontent.com/43827399/53262103-c12c8400-36a3-11e9-8b9f-7ceefd6e7e55.gif)
![file from ios 3](https://user-images.githubusercontent.com/43827399/53262105-c12c8400-36a3-11e9-87e5-02e5582c3d21.gif)
![file from ios 2](https://user-images.githubusercontent.com/43827399/53262106-c12c8400-36a3-11e9-9c6d-d96edf81db13.gif)
![file from ios 1](https://user-images.githubusercontent.com/43827399/53262107-c12c8400-36a3-11e9-9178-2626adfb456a.gif)
![file from ios](https://user-images.githubusercontent.com/43827399/53262109-c12c8400-36a3-11e9-8f5d-ef0ddbe71269.gif)

# Detailed Outline

The app has 3 tabs

1. Search
2. List
3. History

# Search

This view has a:
- Search Button
- Collection View


The search button allows the user to search for a venue by typing a category name

The collection view has a collection of categories. Selecting a category should give you a table view of all the venues of that particular location.

Selecting a table view cell should segue to a detailed view with more information of the venue including:

- The image of the venue
- The address of the venue
- The category under which the venue falls
- The direction of the venue
- A favorite button which allows the user to favorite the venue
- A Tip button which allows the user to leave a tip

## List

This view has a:

1. Create Button
2. Collection View

The create button allows the user to create and add a venue to their favorite list 

The collection view displays the list of venues favorited. Clicking a collection view should segue to a detail about the venue such as the venue's name, the latitude and longitude.

## History

This view has a table view list all the history of searched venues

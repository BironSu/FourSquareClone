//
//  MapViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit
import MapKit


protocol LocationResultsControllerDelegate: AnyObject {
    func didSelectCoordinate(_ locationResultsController: MapViewController, coordinate: CLLocationCoordinate2D)
    func didScrollTableView(_ locationResultsController: MapViewController)
}




class MapViewController: UIViewController {
    //private var annotation: MKAnnotation!
//    public var venueInfo =
private let searchCompleter = MKLocalSearchCompleter()
    private let completerResults = [MKLocalSearchCompletion]()
    
    weak var delegate: LocationResultsControllerDelegate?
    
    let mapView = MapView()

    var venueLocation: SingleVenueInfo!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        mapView.mapView.delegate = self
    }
    
    
    private func getAnnotation() {
    //mapView.mapView.removeAnnotation(annotation)
        guard let location = venueLocation.location else {
            print("location is nil")
            return
        }
        let coordinate = CLLocationCoordinate2D(latitude: location.lat, longitude: location.lng)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = venueLocation.name
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 1600, longitudinalMeters: 1600)
        mapView.mapView.showAnnotations([annotation], animated: true)
        mapView.mapView.setRegion(region, animated: true)
    }

    
    
}

extension MapViewController: MKMapViewDelegate {
    
    
    
    
}

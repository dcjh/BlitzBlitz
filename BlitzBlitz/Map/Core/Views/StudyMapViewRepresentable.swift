//
//  StudyMapViewRepresentable.swift
//  Study Buddy
//
//  Created by Darrick Chew on 19/1/24.
//

import Foundation
import SwiftUI
import MapKit


var locationSampleArray: [CLLocationCoordinate2D] = [CLLocationCoordinate2D(latitude: 1.3162, longitude: 103.8),CLLocationCoordinate2D(latitude: 1.3162, longitude: 102.8), CLLocationCoordinate2D(latitude: 1.29, longitude: 103.8)]
var locationSample: CLLocationCoordinate2D? = locationSampleArray.randomElement()
var locationSampleLong: Double = locationSample!.longitude
var locationSampleLat: Double = locationSample!.latitude


struct StudyMapViewRepresentable: UIViewRepresentable {
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        mapView.isScrollEnabled = true
        
        return mapView
    }

    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //if let coordinate = locationSample{
          //  context.coordinator.addAndSelectAnnotation(withCoordinate: coordinate)
       // }
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}


extension StudyMapViewRepresentable {
    
    class MapCoordinator: NSObject, MKMapViewDelegate {
        
        //PROPERTIES
        let parent: StudyMapViewRepresentable
        
        //LIFE-CYCLE
        init(parent: StudyMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
        //MKMAPVIEWDELEGATE
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = 
            MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,
                                                              longitude: userLocation.coordinate.longitude),
                               span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        
            parent.mapView.setRegion(region, animated: true)
        }
        
        //HELPERS
        /*func addAndSelectAnnotation(withCoordinate coordinate: CLLocationCoordinate2D) {
            parent.mapView.removeAnnotations(parent.mapView.annotations)
            let anno = MKPointAnnotation()
            anno.coordinate = coordinate
            parent.mapView.addAnnotation(anno)
            parent.mapView.selectAnnotation(anno, animated: true)
            parent.mapView.showAnnotations(parent.mapView.annotations, animated: true)
        }*/
        
    }
}

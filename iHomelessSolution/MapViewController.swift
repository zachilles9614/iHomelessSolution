//
//  MapViewController.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/22/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    var locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        
        
        // Do any additional setup after loading the view.
        
        let latitude: CLLocationDegrees = 38.6360862
        let longitude: CLLocationDegrees = -90.2326524
        let latDelta: CLLocationDegrees = 0.25
        let lonDelta: CLLocationDegrees = 0.25
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
        
        let latitude1: CLLocationDegrees = 38.6282682
        let longitude1: CLLocationDegrees = -90.2011444
        let coordinates = CLLocationCoordinate2D(latitude: latitude1, longitude: longitude1)
        let annotation1 = MKPointAnnotation()
        annotation1.title = "The Bridge Outreach"
        annotation1.subtitle = "Homeless Shelter  314-421-3136"
        annotation1.coordinate = coordinates
        map.addAnnotation(annotation1)
        
        
        let latitude2: CLLocationDegrees = 38.6539078
        let longitude2: CLLocationDegrees = -90.19780
        let coordinates1 = CLLocationCoordinate2D(latitude: latitude2, longitude: longitude2)
        let annotation2 = MKPointAnnotation()
        annotation2.title = "Stepping Into The Light Ministry"
        annotation2.subtitle = "Homeless Shelter  314-231-5175"
        annotation2.coordinate = coordinates1
        map.addAnnotation(annotation2)
        
        let latitude3: CLLocationDegrees = 38.6431676
        let longitude3: CLLocationDegrees = -90.1914882
        let coordinates2 = CLLocationCoordinate2D(latitude: latitude3, longitude: longitude3)
        let annotation3 = MKPointAnnotation()
        annotation3.title = "Karen House Catholic Worker"
        annotation3.subtitle = "Homeless Shelter  314-621-4052"
        annotation3.coordinate = coordinates2
        map.addAnnotation(annotation3)
        
        let latitude4: CLLocationDegrees = 38.6375733
        let longitude4: CLLocationDegrees = -90.204668
        let coordinates3 = CLLocationCoordinate2D(latitude: latitude4, longitude: longitude4)
        let annotation4 = MKPointAnnotation()
        annotation4.title = "Gateway 180 Homeless Services"
        annotation4.subtitle = "Homeless Shelter  314-621-4052"
        annotation4.coordinate = coordinates3
        map.addAnnotation(annotation4)
        
        
        let latitude5: CLLocationDegrees = 38.6186934
        let longitude5: CLLocationDegrees = -90.2322516
        let coordinates4 = CLLocationCoordinate2D(latitude: latitude5, longitude: longitude5)
        let annotation5 = MKPointAnnotation()
        annotation5.title = "Almost Home"
        annotation5.subtitle = "Homeless Shelter  314-771-4663"
        annotation5.coordinate = coordinates4
        map.addAnnotation(annotation5)
        
        let latitude6: CLLocationDegrees = 38.6322361
        let longitude6: CLLocationDegrees = -90.2123286
        let coordinates5 = CLLocationCoordinate2D(latitude: latitude6, longitude: longitude6)
        let annotation6 = MKPointAnnotation()
        annotation6.title = "Horizon Club"
        annotation6.subtitle = "Homeless Shelter  314-436-1733"
        annotation6.coordinate = coordinates5
        map.addAnnotation(annotation6)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        var i = 0
//        let userLocation: CLLocation = locations[0]
//        
//        let latitude = userLocation.coordinate.latitude
//        
//        let longitude = userLocation.coordinate.longitude
//        
//        let latDelta: CLLocationDegrees = 0.025
//        
//        let lonDelta: CLLocationDegrees = 0.025
//        
//        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
//        
//        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//        
//        let region = MKCoordinateRegion(center: location, span: span)
//        if (i == 0) {
//            self.map.setRegion(region, animated: true)
//        }
//        i += 1
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

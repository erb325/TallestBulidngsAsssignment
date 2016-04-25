//
//  ViewController.swift
//  TallestBuildings
//
//  Created by Ember Baker on 4/10/16.
//  Copyright © 2016 Ember Baker. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
//    var tallestBuildings = [
//        CLLocationCoordinate2DMake(25.1972, 55.2744),   // Dubai
//        
//        CLLocationCoordinate2DMake(31.3225, 121.5055),  // Shanghi
//        
//        CLLocationCoordinate2DMake(21.4185, 39.8241),   // Mecca
//        
//        CLLocationCoordinate2DMake(40.7130, -74.0131),  // NYC
//        
//        CLLocationCoordinate2DMake(25.0330, 121.5654),   // Taipei
//        
//        CLLocationCoordinate2DMake(31.2346, 121.5074),  // Shanghi
//        
//        CLLocationCoordinate2DMake(22.3034, 114.1602),  // Hong Kong
//        
//        CLLocationCoordinate2DMake(3.1412 , 101.68653), // Kuala Lumpar
//        CLLocationCoordinate2DMake(3.1420 , 101.68653), // kuala Lumpar
//        
//        CLLocationCoordinate2DMake(32.06167, 118.777),  // Nanjing
//        
//        CLLocationCoordinate2DMake(41.8789, -87.6359),  // Chicago
//        
//        CLLocationCoordinate2DMake(22.5420, 114.1068),  // Shenzhen
//        
//        CLLocationCoordinate2DMake(23.1178, 113.3236),  // Guang Zhou
//        
//        CLLocationCoordinate2DMake(40.7616, -73.9718),  // NYC
//        
//        CLLocationCoordinate2DMake(41.8889, -87.6264),  // Chicago
//        
//        CLLocationCoordinate2DMake(31.2353, 121.5057),  // Shanghi
//        
//        CLLocationCoordinate2DMake(25.0886, 55.1469),   // Dubai
//        
//        CLLocationCoordinate2DMake(29.3738, 47.9889),   // Kuwait City
//        
//        CLLocationCoordinate2DMake(22.2859, 114.1581),  // Hong Kong
//        CLLocationCoordinate2DMake(25.0898, 55.1506)    // Dubai
//    ]
    
    var tallestBuilidngsArray = [
        //1
        BuildingStats(loc: CLLocationCoordinate2DMake(25.1972, 55.2744), n: "Burj Khalifa", web: "http://skyscrapercenter.com/building/burj-khalifa/3", c: "Dubai", coun: "United Arab Emirates"),
        //2
        BuildingStats(loc: CLLocationCoordinate2DMake(31.3225, 121.5055), n: "Shanghai Tower", web: "http://skyscrapercenter.com/building/shanghai-tower/56", c: "Shanghi", coun: "China"),
        //3 what happened to this guy
        BuildingStats(loc: CLLocationCoordinate2DMake(21.4192, 39.8257), n: "Makkah Royal Clock Tower", web: "http://skyscrapercenter.com/building/makkah-royal-clock-tower/84", c: "Mecca", coun: "Saudia Arabia"),
        //4
        BuildingStats(loc: CLLocationCoordinate2DMake(40.7130, -74.0131), n: "One World Trade Center", web: "http://skyscrapercenter.com/building/one-world-trade-center/98", c: "New York Ciry", coun: "United States"),
        //5
        BuildingStats(loc: CLLocationCoordinate2DMake(25.0330, 121.5654), n: "Taipei 101", web: "http://skyscrapercenter.com/building/taipei-101/117", c: "Taipei", coun: "Taiwan"),
        //6
        BuildingStats(loc: CLLocationCoordinate2DMake(31.2346, 121.5074), n: "Shanghai World Financial Center", web: "http://skyscrapercenter.com/building/shanghai-world-financial-center/131", c: "Shanghai", coun: "China"),
        //7
        BuildingStats(loc: CLLocationCoordinate2DMake(22.3034, 114.1602), n: "International Commerce Centre", web: "http://skyscrapercenter.com/building/international-commerce-centre/137", c: "Hong Kong", coun: "China"),
        //8
        BuildingStats(loc: CLLocationCoordinate2DMake(3.1412 , 101.68653), n: "Petronas Twin Tower 1", web: "http://skyscrapercenter.com/building/petronas-twin-tower-1/149", c: "Kuala Lumpur", coun: "Malaysia"),
        //9
        BuildingStats(loc: CLLocationCoordinate2DMake(3.1420 , 101.68653), n: "Petronas Twin Tower 2", web: "http://skyscrapercenter.com/building/petronas-twin-tower-2/150", c: "Kuala Lumpur", coun: "Malaysia"),
        //10
        BuildingStats(loc: CLLocationCoordinate2DMake(32.06167, 118.777), n: "Zifeng Tower", web: "http://skyscrapercenter.com/building/zifeng-tower/165", c: "Nanjing", coun: "China"),
        //11
        BuildingStats(loc: CLLocationCoordinate2DMake(41.8789, -87.6359), n: "Willis Tower", web: "http://skyscrapercenter.com/building/willis-tower/169", c: "Chicago", coun: "United States"),
        //12
        BuildingStats(loc: CLLocationCoordinate2DMake(22.5420, 114.1068), n: "KK100", web: "http://skyscrapercenter.com/building/kk100/173", c: "Shenzhen", coun: "China"),
        //13
        BuildingStats(loc: CLLocationCoordinate2DMake(23.1178, 113.3236), n: "Guangzhou International Finance Center", web: "http://skyscrapercenter.com/building/guangzhou-international-finance-center/174", c: "Guangzhou", coun: "China"),
        //14
        BuildingStats(loc: CLLocationCoordinate2DMake(40.7616, -73.9718), n: "432 Park Avenue", web: "http://skyscrapercenter.com/building/432-park-avenue/13227", c: "New York City", coun: "United States"),
        //15
        BuildingStats(loc: CLLocationCoordinate2DMake(41.8889, -87.6264), n: "Trump International Hotel & Tower", web: "http://skyscrapercenter.com/building/trump-international-hotel-tower/203", c: "Chicago", coun: "United States"),
        //16
        BuildingStats(loc: CLLocationCoordinate2DMake(31.2353, 121.5057), n: "Jin Mao Tower", web: "http://skyscrapercenter.com/building/jin-mao-tower/189", c: "Shanghai", coun: "China"),
        //17
        BuildingStats(loc: CLLocationCoordinate2DMake(25.0886, 55.1469), n: "Princess Tower", web: "http://skyscrapercenter.com/building/princess-tower/206", c: "Dubai", coun: "United Arab Emirates"),
        //18
        BuildingStats(loc: CLLocationCoordinate2DMake(29.3738, 47.9889), n: "Al Hamra Tower", web: "http://skyscrapercenter.com/building/al-hamra-tower/208", c: "Kuwait City", coun: "Kuwait"),
        //19
        BuildingStats(loc: CLLocationCoordinate2DMake(22.2859, 114.1581), n: "Two International Finance Centre", web: "http://skyscrapercenter.com/building/two-international-finance-centre/205", c: "Hong Kong", coun: "China"),
        //20
        BuildingStats(loc: CLLocationCoordinate2DMake(25.0898, 55.1506), n: "23 Marina", web: "http://skyscrapercenter.com/building/b23-marina/247", c: "Dubai", coun: "United Arab Emirates")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        self.mapView.setRegion(MKCoordinateRegionForMapRect(MKMapRectWorld), animated: false)
        
        for location in self.tallestBuilidngsArray{
            let dropPin = MKPointAnnotation()
            dropPin.coordinate = location.location
            dropPin.title = location.name
            dropPin.subtitle = "\(location.city), \(location.country)"
            mapView.addAnnotation(dropPin)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}


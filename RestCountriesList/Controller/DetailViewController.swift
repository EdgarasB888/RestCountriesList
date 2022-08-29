//
//  ViewController.swift
//  RestCountriesList
//
//  Created by iMac on 2022-08-22.
//

import UIKit

class DetailViewController: UIViewController
{
    var country: Country?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupView()
        setupNavigationBar()
        setupLabels()
    }

    private func setupView()
    {
        view.backgroundColor = .secondarySystemBackground
        view.isOpaque = false
    }
    
    private func setupNavigationBar()
    {
        title = (country?.name.common ?? "No value") + " " + (country?.flag ?? "No value")
    }
    
    private func setupLabels()
    {
        let capitalLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 45))
        capitalLabel.center = CGPoint(x: 160, y: 245)
        let capitalLabelString = country?.capital?.joined(separator: " ")
        capitalLabel.font = UIFont(name: "MarkerFelt-Wide", size: 20)
        capitalLabel.text = "Capital: " + (capitalLabelString ?? "No info")
        
        
        let populationLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 45))
        populationLabel.center = CGPoint(x: 160, y: 285)
        populationLabel.font = UIFont(name: "MarkerFelt-Wide", size: 20)
        populationLabel.text = "Population: " + "\(country?.population ?? 0)"
        
        
        let areaLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 20))
        areaLabel.center = CGPoint(x: 160, y: 265)
        areaLabel.font = UIFont(name: "MarkerFelt-Wide", size: 20)
        areaLabel.text = "Area: " + "\(country?.area ?? 0.0)"
        
        self.view.addSubview(capitalLabel)
        self.view.addSubview(populationLabel)
        self.view.addSubview(areaLabel)
    }
    
    
}


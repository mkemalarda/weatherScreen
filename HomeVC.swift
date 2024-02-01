//
//  ViewController.swift
//  DesignProject
//
//  Created by Mustafa Kemal ARDA on 1.02.2024.
//

import UIKit
import SnapKit
import SwiftUI

class HomeVC: UIViewController {
    
    
    //MARK: - Variables
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, Jhone!"
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 40)
        return label
    }()
    
    private var subtitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Welcome to your smart home!"
        label.textColor = .gray
        //label.font = UIFont(name:  "HelveticaNeue-Medium", size: 15)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private var tableImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "tablecells.fill")
        image.tintColor = .gray
        return image
    }()
    
    //MARK: - WeatherView
    private var weatherView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 40
        view.backgroundColor = .systemBlue
        return view
    }()
    
    private var sunImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "cloudy-2")
        return image
    }()
    
    private var weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "Cloudy"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 30)
        return label
    }()
    
    private var cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Los Angeles, California"
        label.textColor = .white
        //label.font = UIFont(name:  "HelveticaNeue-Medium", size: 10)
        label.font = UIFont.boldSystemFont(ofSize: 10)
        return label
    }()
    
    private var degreeLabel: UILabel = {
        let label = UILabel()
        label.text = "36°"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 50)
        return label
    }()
    
    private var sensibleDegree: UILabel = {
        let label = UILabel()
        label.text = "36°"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 20)
        return label
    }()
    
    
    private var sensibleLabel: UILabel = {
        let label = UILabel()
        label.text = "Sensible"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 13)
        return label
    }()
    
    private var humudityPercent: UILabel = {
        let label = UILabel()
        label.text = "48%"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 20)
        return label
    }()
    
    private var humudityLabel: UILabel = {
        let label = UILabel()
        label.text = "Humudity"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 13)
        return label
    }()
    
    private var forceNumber: UILabel = {
        let label = UILabel()
        label.text = "0.5"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 20)
        return label
    }()
    
    private var forceLabel: UILabel = {
        let label = UILabel()
        label.text = "W.Force"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 13)
        return label
    }()
    
    private var pressureNumber: UILabel = {
        let label = UILabel()
        label.text = "1009 hPa"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 20)
        return label
    }()
    
    private var pressureLabel: UILabel = {
        let label = UILabel()
        label.text = "Pressure"
        label.textColor = .white
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 13)
        return label
    }()
    
    //MARK: - Rooms
    private var allroomLabel: UILabel = {
        let label = UILabel()
        label.text = "All Room"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var bedroomLabel: UILabel = {
        let label = UILabel()
        label.text = "Bedroom"
        label.textColor = .gray
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var bathroomLabel: UILabel = {
        let label = UILabel()
        label.text = "Bathroom"
        label.textColor = .gray
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var kitchenLabel: UILabel = {
        let label = UILabel()
        label.text = "Kitchen"
        label.textColor = .gray
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    
    //    private var collection1: UICollectionView = {
    //        let layout = UICollectionViewFlowLayout()
    //        layout.scrollDirection = .horizontal
    //        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    //        return collectionView
    //    }()
    
    
    //MARK: - Air Conditionar
    private var airconditionarView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.backgroundColor = .white
        return view
    }()
    
    private var airconditionarImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "air.conditioner.horizontal")
        image.tintColor = .systemBlue
        return image
    }()
    
    private var airconditionarLabel: UILabel = {
        let label = UILabel()
        label.text = "Air conditionar"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        //label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    
    private var airconditionarOnOffLabel: UILabel = {
        let label = UILabel()
        label.text = "Off"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var airconditionarSwitch: UISwitch = {
        let label = UISwitch()
        return label
    }()
    
    
    //MARK: - Fridge
    private var fridgeView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.backgroundColor = .white
        return view
    }()
    
    
    private var fridgeImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "refrigerator")
        image.tintColor = .systemBlue
        return image
    }()
    
    private var fridgeLabel: UILabel = {
        let label = UILabel()
        label.text = "Fridge"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    
    private var fridgeOnOffLabel: UILabel = {
        let label = UILabel()
        label.text = "Off"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var fridgeSwitch: UISwitch = {
        let label = UISwitch()
        return label
    }()
    
    //MARK: - Television
    private var televisionView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.backgroundColor = .white
        return view
    }()
    
    
    private var televisionImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "tv")
        image.tintColor = .systemBlue
        return image
    }()
    
    private var televisionLabel: UILabel = {
        let label = UILabel()
        label.text = "Television"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    
    private var televisionOnOffLabel: UILabel = {
        let label = UILabel()
        label.text = "Off"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var televisionSwitch: UISwitch = {
        let label = UISwitch()
        return label
    }()
    
    //MARK: - Washer
    private var washerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.backgroundColor = .white
        return view
    }()
    
    private var washerImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "washer")
        image.tintColor = .systemBlue
        return image
    }()
    
    private var washerLabel: UILabel = {
        let label = UILabel()
        label.text = "Washer"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    
    private var washerOnOffLabel: UILabel = {
        let label = UILabel()
        label.text = "Off"
        label.textColor = .black
        label.font = UIFont(name:  "HelveticaNeue-Medium", size: 17)
        return label
    }()
    
    private var washerSwitch: UISwitch = {
        let label = UISwitch()
        //label.onTintColor = .systemBlue
        return label
    }()
    
    
    
    
    
    //MARK: - Button
    private var addDeviceButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.setTitle("Add Devices", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        return button
    }()
    
    
    
    
    
    //    override func viewDidLayoutSubviews() {
    //        weatherView.setGradientColor()
    //        addDeviceButton.setGradientColor()
    //    }
    //
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemGray6
        
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(25)
        }
        
        view.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(25)
        }
        
        view.addSubview(tableImage)
        tableImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.right.equalToSuperview().inset(20)
            make.height.width.equalTo(30)
        }
        
        //MARK: - WeatherView
        
        view.addSubview(weatherView)
        weatherView.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(170)
        }
        
        weatherView.addSubview(sunImage)
        sunImage.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(20)
            make.height.width.equalTo(50)
        }
        
        weatherView.addSubview(weatherLabel)
        weatherLabel.snp.makeConstraints { make in
            make.left.equalTo(sunImage.snp.right).offset(20)
            make.top.equalToSuperview().offset(20)
        }
        
        weatherView.addSubview(cityLabel)
        cityLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherLabel.snp.bottom).offset(2)
            make.left.equalTo(sunImage.snp.right).offset(20)
        }
        
        weatherView.addSubview(degreeLabel)
        degreeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(20)
        }
        
        
        weatherView.addSubview(sensibleDegree)
        sensibleDegree.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            make.top.equalTo(sunImage.snp.bottom).offset(30)
            
        }
        
        weatherView.addSubview(sensibleLabel)
        sensibleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(sensibleDegree.snp.bottom).offset(5)
        }
        
        weatherView.addSubview(humudityPercent)
        humudityPercent.snp.makeConstraints { make in
            make.left.equalTo(sensibleDegree.snp.right).offset(50)
            make.top.equalTo(sunImage.snp.bottom).offset(30)
        }
        
        weatherView.addSubview(humudityLabel)
        humudityLabel.snp.makeConstraints { make in
            make.left.equalTo(sensibleLabel.snp.right).offset(30)
            make.top.equalTo(humudityPercent.snp.bottom).offset(5)
        }
        
        weatherView.addSubview(forceNumber)
        forceNumber.snp.makeConstraints { make in
            make.left.equalTo(humudityPercent.snp.right).offset(50)
            make.top.equalTo(sunImage.snp.bottom).offset(30)
        }
        
        weatherView.addSubview(forceLabel)
        forceLabel.snp.makeConstraints { make in
            make.left.equalTo(humudityLabel.snp.right).offset(30)
            make.top.equalTo(humudityPercent.snp.bottom).offset(5)
        }
        
        weatherView.addSubview(pressureNumber)
        pressureNumber.snp.makeConstraints { make in
            make.left.equalTo(forceNumber.snp.right).offset(30)
            make.top.equalTo(sunImage.snp.bottom).offset(30)
        }
        
        weatherView.addSubview(pressureLabel)
        pressureLabel.snp.makeConstraints { make in
            make.left.equalTo(forceLabel.snp.right).offset(35)
            make.top.equalTo(humudityPercent.snp.bottom).offset(5)
        }
        
        //MARK: - Rooms
        view.addSubview(allroomLabel)
        allroomLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherView.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(20)
        }
        
        view.addSubview(bedroomLabel)
        bedroomLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherView.snp.bottom).offset(50)
            make.left.equalTo(allroomLabel.snp.right).offset(20)
        }
        
        view.addSubview(bathroomLabel)
        bathroomLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherView.snp.bottom).offset(50)
            make.left.equalTo(bedroomLabel.snp.right).offset(20)
        }
        
        view.addSubview(kitchenLabel)
        kitchenLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherView.snp.bottom).offset(50)
            make.left.equalTo(bathroomLabel.snp.right).offset(20)
        }
        
        
        
        
        
        //MARK: - AirconditionarView
        
        view.addSubview(airconditionarView)
        airconditionarView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(allroomLabel.snp.bottom).offset(15)
            make.height.width.equalTo(150)
            
        }
        
        airconditionarView.addSubview(airconditionarImage)
        airconditionarImage.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(25)
        }
        
        airconditionarView.addSubview(airconditionarLabel)
        airconditionarLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(airconditionarImage.snp.bottom).offset(10)
        }
        
        airconditionarView.addSubview(airconditionarOnOffLabel)
        airconditionarOnOffLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(airconditionarLabel.snp.bottom).offset(25)
        }
        
        airconditionarView.addSubview(airconditionarSwitch)
        airconditionarSwitch.snp.makeConstraints { make in
            make.left.equalTo(airconditionarOnOffLabel.snp.right).offset(40)
            make.top.equalTo(airconditionarLabel.snp.bottom).offset(22)
        }
        
        airconditionarSwitch.addTarget(self, action: #selector(airconditionarChangeLabel(_:)), for: .valueChanged)
        
        
        
        
        
        //MARK: - FridgeView
        
        view.addSubview(fridgeView)
        fridgeView.snp.makeConstraints { make in
            make.left.equalTo(airconditionarView.snp.right).offset(40)
            make.right.equalToSuperview().inset(25)
            make.top.equalTo(allroomLabel.snp.bottom).offset(15)
            make.height.width.equalTo(150)
            
        }
        
        fridgeView.addSubview(fridgeImage)
        fridgeImage.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(25)
        }
        
        fridgeView.addSubview(fridgeLabel)
        fridgeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(fridgeImage.snp.bottom).offset(10)
        }
        
        fridgeView.addSubview(fridgeOnOffLabel)
        fridgeOnOffLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(airconditionarLabel.snp.bottom).offset(25)
        }
        
        fridgeView.addSubview(fridgeSwitch)
        fridgeSwitch.snp.makeConstraints { make in
            make.left.equalTo(fridgeOnOffLabel.snp.right).offset(40)
            make.top.equalTo(airconditionarLabel.snp.bottom).offset(22)
        }
        
        
        fridgeSwitch.addTarget(self, action: #selector(fridgeChangeLabel(_:)), for: .valueChanged)
        
        
        
        //MARK: - TelevisionView
        
        view.addSubview(televisionView)
        televisionView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(airconditionarView.snp.bottom).offset(15)
            make.height.width.equalTo(150)
            
        }
        
        
        
        televisionView.addSubview(televisionImage)
        televisionImage.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(25)
        }
        
        televisionView.addSubview(televisionLabel)
        televisionLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(televisionImage.snp.bottom).offset(10)
        }
        
        televisionView.addSubview(televisionOnOffLabel)
        televisionOnOffLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(televisionLabel.snp.bottom).offset(25)
        }
        
        televisionView.addSubview(televisionSwitch)
        televisionSwitch.snp.makeConstraints { make in
            make.left.equalTo(televisionOnOffLabel.snp.right).offset(40)
            make.top.equalTo(televisionLabel.snp.bottom).offset(22)
        }
        
        televisionSwitch.addTarget(self, action: #selector(televisionChangeLabel(_:)), for: .valueChanged)
        
        
        
        //MARK: - WasherView
        
        view.addSubview(washerView)
        washerView.snp.makeConstraints { make in
            make.left.equalTo(televisionView.snp.right).offset(40)
            make.right.equalToSuperview().inset(25)
            make.top.equalTo(fridgeView.snp.bottom).offset(15)
            make.height.width.equalTo(150)
        }
        
        washerView.addSubview(washerImage)
        washerImage.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(25)
        }
        
        washerView.addSubview(washerLabel)
        washerLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(televisionImage.snp.bottom).offset(10)
        }
        
        washerView.addSubview(washerOnOffLabel)
        washerOnOffLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(televisionLabel.snp.bottom).offset(25)
        }
        
        washerView.addSubview(washerSwitch)
        washerSwitch.snp.makeConstraints { make in
            make.left.equalTo(washerOnOffLabel.snp.right).offset(40)
            make.top.equalTo(washerLabel.snp.bottom).offset(22)
        }
        
        washerSwitch.addTarget(self, action: #selector(washerChangeLabel(_:)), for: .valueChanged)
        
        
        
        
        //MARK: - Button
        
        view.addSubview(addDeviceButton)
        addDeviceButton.snp.makeConstraints { make in
            make.top.equalTo(washerView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(300)
        }
        
    }
    
    
    
    @objc func airconditionarChangeLabel(_ sender: UISwitch){
        if sender.isOn == true {
            airconditionarOnOffLabel.text = "On"
        } else {
            airconditionarOnOffLabel.text = "Off"
        }
    }
    
    @objc func fridgeChangeLabel(_ sender: UISwitch){
        if sender.isOn == true {
            fridgeOnOffLabel.text = "On"
        } else {
            fridgeOnOffLabel.text = "Off"
        }
    }
    
    @objc func televisionChangeLabel(_ sender: UISwitch){
        if sender.isOn == true {
            televisionOnOffLabel.text = "On"
        } else {
            televisionOnOffLabel.text = "Off"
        }
    }
    
    @objc func washerChangeLabel(_ sender: UISwitch){
        if sender.isOn == true {
            washerOnOffLabel.text = "On"
        } else {
            washerOnOffLabel.text = "Off"
        }
    }
    
    
    @objc func clickedButton(){
        UIView.animate(withDuration: 0.1,
                       animations: {
            self.addDeviceButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
            UIView.animate(withDuration: 0.6) {
                self.addDeviceButton.transform = CGAffineTransform.identity
            }
        })
    }
    
    
    
}



#Preview(body: {
    HomeVC()
})




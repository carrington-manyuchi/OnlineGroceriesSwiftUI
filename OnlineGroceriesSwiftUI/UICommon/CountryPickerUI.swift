//
//  CountryPickerUI.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/30.
//

import SwiftUI
import CountryPicker

struct CountryPickerUI: UIViewControllerRepresentable {
    
    @Binding var country: Country?
    
    class Coordinator: NSObject, CountryPickerDelegate {
        
        var parent: CountryPickerUI
        
        init(_ parent: CountryPickerUI) {
            self.parent = parent
        }
        
        func countryPicker(didSelect country: Country) {
            print("Country selected: \(country)")
            parent.country = country
        }
    }
    
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        let countryPicker = CountryPickerViewController()
        countryPicker.selectedCountry = "IN"
        countryPicker.delegate = context.coordinator
        return countryPicker
    }
    
    func updateUIViewController(_ uiViewController: some CountryPickerViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
   
}
